class Player
  def play_turn(warrior)
		if !warrior.feel.empty?
			unless warrior.feel.captive?
				warrior.attack!
			else
				warrior.rescue!
			end
		elsif warrior.health < 20 and warrior.health >= @health
			warrior.rest!
		else
			warrior.walk!
		end
		@health = warrior.health
  end
end
