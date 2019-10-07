require 'rails_helper'

RSpec.describe Concert, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:venue) }
  end
end
