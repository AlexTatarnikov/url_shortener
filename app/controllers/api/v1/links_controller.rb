class Api::V1::LinksController < ApplicationController
  def create
    @link = Link.create(link_params)

    if @link.persisted?
      render json: @link, status: 201
    else
      render json: {success: false}, status: 422
    end
  end

  private

  def link_params
    params.require(:link).permit(:code, :url)
  end
end
