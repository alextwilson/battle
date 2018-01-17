feature 'player 1 can attack' do
  scenario 'player 2 is hit' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Rolocop was hit by Alex!')
  end
end
