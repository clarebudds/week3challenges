require 'player'

RSpec.describe Player do
  subject(:clare) { Player.new('Clare') }

  describe '#name' do
    it 'returns the name' do
      expect(clare.name).to eq 'Clare'
    end
  end
end