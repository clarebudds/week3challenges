def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Clare'
  fill_in :player_2_name, with: 'Rebecca'
  click_button 'Submit'
end