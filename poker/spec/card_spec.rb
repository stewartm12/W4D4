require 'card'
require 'rspec'

describe Card do 
  subject(:card) { Card.new(10, :spades) }

  describe "#initialize" do 
    it "instantiates suit and value" do 
      expect(card.value).to eq(10)
      expect(card.suit).to eq(:spades)
    end 
  end
end
