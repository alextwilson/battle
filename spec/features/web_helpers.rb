def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Alex'
  fill_in 'player2', with: 'Rolocop'
  click_button "Submit"
end
