feature 'form used to take player names' do
  scenario 'displays names' do
    visit('/')
    fill_in 'player1', with: 'Alex'
    fill_in 'player2', with: 'Ben'
    click_button "Submit"

    expect(page).to have_content('Alex' && 'Ben')
  end
end
