class Player
  attr_reader :name, :hit_points

  def initialize(name, hit_points = 100)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points -= 10
  end

  def attack(target)
    target.receive_damage
  end
end
