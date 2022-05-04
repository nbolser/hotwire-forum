require 'rails_helper'

RSpec.describe 'Discussions', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'has basic page layout' do
    visit 'discussions#index'

    expect(page).to have_text('Discussions')
  end
end
