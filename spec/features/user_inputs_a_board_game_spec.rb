require 'rails_helper'

feature "Input a Board Game", %q{

  As a 7th level Dungeon Master
  I want to save the details of a board game that i own
  So that I can have a digital record of it.

  Acceptance Criteria
  [ ] I must enter a name, publisher, description, and release_date
  [ ] If all fields are complete, I am told that my board game has been saved
  [ ] If a field is incomplete, I am given an error message and brought back to the input form.
  [ ] If a board game already exists in the database, I am given an error message.

} do

  scenario 'user inputs a board game' do
    visit new_board_game_path
    fill_in "Name", with: "Settlers of Catan"
    fill_in "Publisher", with: "Mayfair Games"
    fill_in "Description", with: "Best Game Ever!"
    fill_in "Release Date", with: "December 25, 2011"
    click_on "Create Board Game"

    expect(page).to have_content ("created successfully")
  end

end
