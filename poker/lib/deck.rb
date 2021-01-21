require "set"
require_relative "./card.rb"

class Deck
    SUITS = [:spades, :clubs, :hearts, :diamonds].freeze
    VALUES = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"].freeze

    def initialize
        @cards = Set.new
        fill_cards
    end

    def fill_cards
        SUITS.each do |suit|
            VALUES.each do |value|
                @cards << Card.new(value, suit)
            end
        end
    end
end