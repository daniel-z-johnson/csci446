class Player
  def play_turn(warrior)
		if !warrior.feel.empty?
			if warrior.feel.captive?
				warrior.rescue!
			elsif warrior.feel.wall?
				warrior.pivot!
			else
				warrior.attack!
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
