require 'player'

RSpec.describe Player do
  subject(:clare) { Player.new('Clare') }
  subject(:rebecca) { Player.new('Rebecca') }

  describe '#name' do
    it 'returns the name' do
      expect(clare.name).to eq 'Clare'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(clare.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
  describe '#attack' do
    it 'damages the player' do
      expect(rebecca).to receive(:receive_damage)
      clare.attack(rebecca)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit points' do
      expect { clare.receive_damage }.to change { clare.hit _points }.by(-10)
    end
  end
end