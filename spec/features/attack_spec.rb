feature 'player 1 can attack' do
  scenario 'player 2 is hit' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Rolocop was hit by Alex!')
  end

  scenario 'player 2 loses hit points' do
    sign_in_and_play
    click_button('Attack')
    click_button('Oh no!')
    expect(page).to have_content('Hit points: 90')
  end
end
