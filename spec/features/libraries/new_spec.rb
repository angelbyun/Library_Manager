require 'rails_helper'

RSpec.describe 'library creation' do
  it 'links to a new page for the libraries index' do
    visit '/libraries'

    click_button('New Library')
    expect(current_path).to eq('/libraries/new')
  end

  it 'can create new library' do
    visit '/libraries/new'

    fill_in('Name', with: 'Columbine Library')
    click_button('Create Library')

    expect(current_path).to eq("/libraries")
    expect(page).to have_content("Columbine Library")
  end
end
