class ApplicationController < ActionController::API
  respond_to :json

  rescue_from ActionController::ParameterMissing do |exception|
    bad_request(nil, exception.message)
  end

  private

  def bad_request(key=nil, message=nil)
    render json: { errors: { message: message || I18n.t('errors.requests.bad_request') } }, status: 400
  end
end
