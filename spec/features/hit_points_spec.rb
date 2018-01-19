feature 'Hit points' do
  scenario 'displays both players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ed HP100' && 'HP100 Alex'
  end

  scenario 'Player 2 loses 10 hit points when attacked' do
    sign_in_and_play
    attack_once
    expect(page).to have_content 'HP90 Alex'
  end

  scenario 'player one\'s hit points are reduced after switching' do
    sign_in_and_play
    attack_twice
    expect(page).to have_content 'Ed HP90'
  end
end
