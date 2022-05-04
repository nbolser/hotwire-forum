require 'rails_helper'

RSpec.describe Discussion, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:category).counter_cache(true).touch(true) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'scopes' do
    describe '.pinned_discussions' do
      before do
        FactoryBot.create_list(:discussion, 2)
        FactoryBot.create(:discussion, name: 'Pinned discussion', pinned: true)
      end

      it 'sorts by most recent to oldest' do
        expect(described_class.pinned_discussions.first.name).to eq('Pinned discussion')
      end
    end
  end

  describe '#to_param' do
    let(:discussion) { FactoryBot.build_stubbed(:discussion) }

    it 'overrides to_param with a URL friendly format' do
      expect(discussion.to_param).to match(/-friendly-discussion-/)
    end
  end
end
