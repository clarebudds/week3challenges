require 'attack'

feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play 
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    click_button'OK'
    expect(page).not_to have_content 'Rebecca: 60HP'
    expect(page).to have_content 'Rebecca: 50HP'
  end
end

feature 'Attacking' do
  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play 
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Clare: 60HP'
    expect(page).to have_content 'Clare: 50HP'
  end
end

feature 'Attacking' do
  scenario 'attack p2' do
  sign_in_and_play
  click_link 'Attack'
  expect(page).to have_content 'Clare attacked Rebecca'
  end
end

feature 'Attacking' do
  scenario 'attack p1' do
  sign_in_and_play
  click_link 'Attack'
  click_button'OK'
  click_link 'Attack'
  expect(page).to have_content 'Rebecca attacked Clare'
  end
end
