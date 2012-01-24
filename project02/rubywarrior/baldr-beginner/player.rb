class Player
  def play_turn(warrior)
		if !warrior.feel.empty?
			warrior.attack!
		elsif warrior.health < 20 and warrior.health >= @health
			warrior.rest!
		else
			warrior.walk!
		end
		@health = warrior.health
  end
end
