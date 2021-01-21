class TowerHanoi
  attr_accessor :tower1, :tower2, :tower3

  def initialize
    @tower1 = [5, 4, 3, 2, 1]
    @tower2 = []
    @tower3 = []
  end

  def move(tower1, tower2)
    if tower2.empty? || tower2.last > tower1.last
        disc = tower1.pop
        tower2 << disc
    else
     raise "Cannot move bigger disc on top of a smaller disc" if tower2.last < tower1.last
    end
  end

  def win 
    tower3 == [5, 4, 3, 2, 1]
  end

  def print
    p tower1
    p tower2
    p tower3
  end

  def user_input
    puts "Move piece in the form as '1 2'"
    user_in = gets.chomp.split
    user_in.map! do |num|
      return tower1 if num == "1"
      return tower2 if num == "2"
      return tower3 if num == "3"
    end
  end

  def play
    while !win
      
    end
  end

end
