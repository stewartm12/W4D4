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

end
