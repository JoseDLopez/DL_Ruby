require 'pp'

class Entity
	@@created=[]
	attr_accessor :coordinate_x, :coordinate_y, :type, :zombified

	def initialize (coordinate_x,coordinate_y,type)
		@coordinate_x = coordinate_x
		@coordinate_y = coordinate_y
		@type = type
		@zombified = false
		if type == 'zombie'
			@zombified = true
		elsif type == 'dog' || type == 'human'
			@zombified = false
		end
		@@created.push([@coordinate_y,@coordinate_x,@type,@zombified])
	end

	def walk
	end

	def byte
		if @zombified == true
			#Veremos todos los humanos

		end
	end

	def self.created
		@@created
	end
end


#Creamos un método para crear Humanos
def create_entity (x,type)
	#Vamos desde 1 hasta la cantidad que se quiere crear
	for i in 1..x
		#Inicializamos diciendo que la creación no se ha hecho
		done = false

		#Mientras no esta lista haremos lo siguiente:
		while done==false
			#Generamos las coordenadas aleatorias
			aleat = Random.new
			c_x = aleat.rand(1..30)
			aleat = Random.new
			c_y = aleat.rand(1..30)

			#Verificamos que realmente sean únicas
			unique=true
			Entity.created.each do |element|
				if element[1] == c_y and element[0] ==c_x
					unique = false
				end
			end

			#Si es única pues creamos la entidad
			if unique == true
				Entity.new(c_x,c_y,type)
				done =true
			end
		end
	end
end

create_entity(4,'human')
create_entity(4,'zombie')
create_entity(2,'dog')

pp Entity.created.length
pp Entity.created




##EJERCICIO
# ZOMBIE
# Crear el objeto Zombie con coordenadas x,y y un método para caminar
# Crear el objeto Personas, las personas no se mueven pero si tienen posición x,y
# Los zombies si están a una coordenada de distancia se comen a la persona y esta es 
# convertida en zombie.
# Para hacerlo más sencillo en cada iteración cada zombie recibirá un arreglo con todas las 
# personas verificará si se cumplen las condiciones para ser comido y devolverá a la persona 
# devorada, con eso hay que sacarla del arreglo
# Se pide: Crear 10 zombies, y 5 personas Correr el programa hasta que todas las personas sean 
# devoradas en el apocalipsis. Mostrar cuantas iteraciones requirió el proceso
# Luego agregar : 
# 1. Una clase perro que mate a un zombie cuando éste este cerca de una 
# persona y un zombie 2. Una clase arma, y cuando una persona este en la misma posición del 
# arma la persona recoge el arma, y si un zombie se acerca a una persona con un arma, la 
# persona mata al zombie 