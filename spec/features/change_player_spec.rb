feature 'changes active player' do
  scenario 'displays that it is the first player\'s turn' do
    sign_in_and_play
    expect(page).to have_content("Current player: Ed")
  end

  scenario 'displays that it is the second player\'s turn after attack' do
    sign_in_and_play
    attack_once
    expect(page).to have_content("Current player: Alex")
  end
end
