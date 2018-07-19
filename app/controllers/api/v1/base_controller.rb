class Api::V1::BaseController < ApplicationController
  private

  def respond_with_no_content(options={})
    render({json: {success: true}, status: 200}.merge(options))
  end
end
