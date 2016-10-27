class Player
	def initialize
		@last_health = 20
		@saved= 0
	end


	def play_turn(warrior)
	# add your code here
	#Veremos si hay algun cautivo que rescatar
	#Para ello preguntamos, con un IF, existen cautivos por rescatar?, si existe vamos a la izquierda, sino, a la derecha

		@direction = (@saved == 0) ? :backward : :forward
	# Con esto definimos que iremos a la izquierda o la derecha.

	#Ahora veremos que hacer con ese movimiento a esa direccion:

		if (warrior.feel(@direction).empty?)
			#Tenemos un espacio vacío, asi que nos preguntamos si debemos descansar.
			if (should_rest warrior) == true
				warrior.rest!
			elsif (should_return warrior) == true
				warrior.walk!(:backward)

			else
				warrior.walk!(@direction)
			end

		else
			# #Ahora vermos que hacer en caso de que exista alguna entidad cerca.

			#Verificamos que no sea un cautivo, si lo es, lo rescatamos, sino, lo atacamos
			if warrior.feel(@direction).captive? 
				warrior.rescue!(@direction)
				@saved +=1
			else
				warrior.attack!(@direction)
			end
		end
		#Verificamos actualizar nuestra variable de salud
		@last_health = warrior.health
	end

	def should_rest(warrior)
		if @last_health > warrior.health
			return false
		elsif warrior.health < 18
			return true
		else
			return false
		end
	end

	def should_return(warrior)
		if warrior.health < 7
			return true
		end
	end

end
