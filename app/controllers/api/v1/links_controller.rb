class Api::V1::LinksController < Api::V1::BaseController
  def create
    @link = Link.create(link_params)

    if @link.persisted?
      respond_with_no_content(status: 201)
    else
      respond_with_no_content(status: 422, json: {success: false})
    end
  end

  private

  def link_params
    params.require(:link).permit(:code, :url)
  end
end
