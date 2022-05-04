require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should have_many(:discussions).dependent(:nullify) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe '#to_param' do
    let(:category) { FactoryBot.build_stubbed(:category, name: 'Mocked') }

    it 'overrides to_param with a URL friendly format' do
      expect(category.to_param).to match(/mocked/)
    end
  end
end
