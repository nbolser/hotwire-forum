require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:discussions).dependent(:destroy) }
    it { should have_many(:posts).dependent(:destroy) }
  end

  describe 'validations' do
    subject { FactoryBot.create(:user) }

    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
  end
end
