feature 'losing' do
  scenario 'loss screen is displayed when a player is reduced to HP0' do
    sign_in_and_play
    final_hit
    expect(page).to have_content 'Ed defeated Alex!'
  end
end
