require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'associations' do
    it { should belong_to(:discussion).counter_cache(:post_count).touch(true) }
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:body) }
  end
end
