require 'rails_helper'

RSpec.describe RedirectsController, type: :controller do
  describe '#show' do
    let(:code) { 'sdMs2e' }
    let(:url) { 'http://google.com' }
    let!(:link) { create :link, code: code, url: url }

    subject { get :show, params: { code: code } }

    it { is_expected.to redirect_to(url) }

    it 'saves redirect info' do
      subject

      expect(link.redirects.last.request_ip).to eq '0.0.0.0'
    end

    context 'when url without scheme' do
      let(:url) { 'google.com' }

      it { is_expected.to redirect_to("http://#{url}") }
    end

    context 'when link does not exist' do
      let(:link) { nil }

      it { is_expected.to redirect_to(root_path) }
    end
  end
end
