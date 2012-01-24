class Player
  def play_turn(warrior)

		if !warrior.feel.empty?
			unless warrior.feel.captive?
				warrior.attack!
			else
				warrior.rescue!
			end
		elsif warrior.health < 20 and @health <= warrior.health
			if warrior.feel(:backward).empty?
				warrior.walk!(:backward)
			else
				if warrior.feel(:backward).wall?
					warrior.rest!
				else
					warrior.rescue!(:backward)
				end
			end
		else
			if warrior.health < 10
				warrior.walk!(:backward)
			else
				warrior.walk!
			end
		end
		@health = warrior.health
  end
end
