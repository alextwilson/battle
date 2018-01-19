def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Ed'
  fill_in 'player2', with: 'Alex'
  click_button "Submit"
end

def attack_once
  click_button 'Attack'
  click_link 'Ok'
end

def attack_twice
  2.times { attack_once }
end

def final_hit
  19.times { attack_once }
end
