require 'attack'

describe Attack do
  subject( :object) { described_class }
  let (:player) { double :player }

  describe '.run' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      object.run(player)
    end
  end
end

feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play 
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Rebecca: 60HP'
    expect(page).to have_content 'Rebecca: 50HP'
  end
end


