feature 'View Hit points' do
  scenario 'show player 2 hit points' do
    visit('/')
    sign_in_and_play
    save_and_open_page 
    expect(page).to have_content 'Rebecca: 60HP'
  end

  scenario 'show player 1 hit points' do
    visit('/')
    sign_in_and_play
    save_and_open_page 
    expect(page).to have_content 'Clare: 60HP'
  end
end