#require "byebug"
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
    if tower3 == [5, 4, 3, 2, 1]
      puts "Congratulations you won!"
      true
    else
      false
    end
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
       if num == "1"
        @tower1
       elsif num == "2"
        @tower2
       elsif num == "3"
        @tower3 
       else 
        raise "Invalid tower"
       end
    end
    return user_in
  end

  def play
    while !self.win
      
      system("clear")
      begin
      self.print
      towers = self.user_input
      move(towers[0], towers[1])
      rescue
        puts "Invalid move"
        retry
      end
    end
  end

end
h = TowerHanoi.new
h.play