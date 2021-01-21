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

  describe "#move" do 
    it "moves a number from one tower to another" do 
      hanoi.move(hanoi.tower1, hanoi.tower3)
      expect(hanoi.tower3).to eq([1])
      expect(hanoi.tower1).to eq([5, 4, 3, 2])
    end

    context "if disc being moved is larger than receiving tower" do
      
      
      it "should raise an error" do
        hanoi.move(hanoi.tower1, hanoi.tower3)
        expect{hanoi.move(hanoi.tower1, hanoi.tower3)}.to raise_error("Cannot move bigger disc on top of a smaller disc")
      end
    end

  end
end