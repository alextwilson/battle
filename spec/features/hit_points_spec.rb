feature 'player 1 can see hit points' do
  scenario 'display hit points' do
    sign_in_and_play

    expect(page).to have_content('Hit points: ')
  end
end
