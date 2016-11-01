class Player
	def initialize
		@last_health = 20
		@ya_di_vuelta=false
		@rescatados = 0
	end
	def play_turn(warrior)
	# add your code here

		if check_twist(warrior) == true
			warrior.pivot!
		else
			#Verificamos que vemos al frente
			if check_front(warrior) == "captive"
				#Tiene el guerrero cerca al rehen?
				if (warrior.feel.captive?)
					warrior.rescue!
					@rescatados+=1
				else
					warrior.walk!
				end
			elsif check_front(warrior) == "enemy"
				#Tenemos al enemigo cerca?
				warrior.shoot!
			else
				warrior.walk!
			end
		end

		last_health = warrior.health
	end

	def check_front(warrior)
		if (warrior.look.any? {|cuadro| cuadro.captive?})
			return "captive"
		elsif (warrior.look.any? {|cuadro| cuadro.enemy?})
			return "enemy"
		end
	end

	def check_twist(warrior)
		if @ya_di_vuelta== false
			if (warrior.health < @last_health)
				@ya_di_vuelta=true
				return true
			else
				return false
			end
		end
		
		if @rescatados == 1 || @rescatados == 3
			@rescatados +=1
			return true
		else
			return false
		end
	end

	

end
