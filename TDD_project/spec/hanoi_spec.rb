require 'rspec'
require 'hanoi'

describe TowerHanoi do 
  subject(:hanoi) {TowerHanoi.new}
  describe "#initialize" do 
    it "instantiates the three sets of towers" do 
      expect(hanoi.tower1).to eq([5, 4, 3, 2, 1])
      expect(hanoi.tower2).to eq([])
      expect(hanoi.tower3).to eq([])
    end
  end

end