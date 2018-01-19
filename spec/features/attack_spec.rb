feature 'Attacking' do
  scenario 'Notification is received after attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ed attacked Alex'
  end

  scenario 'Notification is received after attack by second player' do
    sign_in_and_play
    attack_once
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Ed'
  end
end
