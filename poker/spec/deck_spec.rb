require "deck"
require 'rspec'

describe Deck do
subject(:deck) {Deck.new}

  describe "#initialize" do 
    it "makes 52 card.instances" do 
      expect(deck.cards.length).to eq(52)
    end

    it "contains thirteen of each suit" do 
      hearts = deck.cards.select {|card| card.suit == :hearts}
      expect(hearts.length).to eq(13)
    end

    it "contains four of each value" do
      kings = deck.cards.select {|card| card.value == "king"}
      expect(kings.length).to eq(4)
    end
  end

  
end
