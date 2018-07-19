class RedirectsController < ActionController::Base
  include Geokit::IpGeocodeLookup

  def show
    @link = Link.find_by(code: params[:code])

    if @link.present?
      uri = URI.parse(@link.url)

      if uri.scheme.nil?
        uri.scheme = 'http'
        uri.host = uri.path
        uri.path = ''
      end

      track_redirect(@link)

      redirect_to uri.to_s
    else
      redirect_to root_path
    end
  end

  private

  def retrieve_location_from_ip
    location = Geokit::Geocoders::MultiGeocoder.geocode(get_ip_address)

    location.success ? location : nil
  end

  def get_ip_address
    (request.env['HTTP_X_FORWARDED_FOR'] || '').split(',').first || request.remote_ip
  end

  def track_redirect(link)
    country_name = ISO3166::Country.find_country_by_alpha2(retrieve_location_from_ip&.country_code)&.name

    Redirect.create!(link: link, request_ip: get_ip_address, location: country_name)
  end
end


