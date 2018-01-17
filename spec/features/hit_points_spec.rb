feature 'player 1 can see hit points' do
  scenario 'display hit points' do
    visit('/')
    fill_in 'player1', with: 'Alex'
    fill_in 'player2', with: 'Ben'
    click_button "Submit"

    expect(page).to have_content('Hit points: ')
  end
end
