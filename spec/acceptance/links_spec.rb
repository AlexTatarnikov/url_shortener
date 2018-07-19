require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Link' do
  header 'accept', 'application/json'
  header 'content-type', 'application/json'

  post 'api/v1/links' do
    with_options scope: :link, required: true do
      parameter :url, 'URL'
      parameter :code, 'Code'
    end

    let(:url)  { 'http://hegmann.co/teresita' }
    let(:code) { 'tbvmn7' }

    example_request 'Create' do
      expect(status).to eq(201)
      expect(parsed_body).to match({
                                     url: url,
                                     code: code
                                   })
    end

    example_request 'Create - error', link: { url: nil } do
      expect(status).to eq(422)
      expect(parsed_body).to match({success: false})
    end
  end
end
