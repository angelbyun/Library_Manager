require 'rails_helper'

RSpec.describe 'library creation' do
# User Story 11, Library Creation
# As a visitor
# When I visit the Library Index page
# Then I see a link to create a new Library record, "New Library"
# When I click this link
# Then I am taken to '/libraries/new' where I see a form for a new library record
# When I fill out the form with a new library's attributes:
# And I click the button "Create Library" to submit the form
# Then a `POST` request is sent to the '/libraries' route,
# a new library record is created,
# and I am redirected to the Library Index page where I see the new Library displayed
  it 'links to a new page for the libraries index' do
    visit '/libraries'

    click_link('New Library')
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
