require "deck"
require 'rspec'

describe Deck do
subject(:deck) {Deck.new}

  describe "#initialize" do 
    it "makes 52 card.instances" do 
      expect(deck.cards.length).to eq(52)
    end

    it "contains thirteen of each suit" do 
      
    end
  end

  
end
