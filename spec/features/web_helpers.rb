def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Ed'
  fill_in 'player2', with: 'Alex'
  click_button "Submit"
end

def attack_once
  click_link 'Attack'
  click_link 'Ok'
end

def attack_twice
  click_link 'Attack'
  click_link 'Ok'
  click_link 'Attack'
  click_link 'Ok'
end
