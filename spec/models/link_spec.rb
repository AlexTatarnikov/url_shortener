require 'rails_helper'

RSpec.describe Link, type: :model do
  it { is_expected.to have_many(:redirects).dependent(:delete_all) }

  it { is_expected.to validate_presence_of :code }
  it { is_expected.to validate_presence_of :url }

  describe 'uniqueness' do
    before { create :link }

    it { is_expected.to validate_uniqueness_of :code }
  end
end
