require 'pp'

# class Vehiculo
# 	#Lo primero que hacemos es inicializar el objeto:
# 	def initialize(modelo)
# 		@modelo = modelo
# 	end

# 	#Crearemos un metodo para que podamos leer el modelo esde afuera, es decir un reader.

# 	def modelo
# 		@modelo
# 	end

# 	#Ahora crearemos un metodo para que podamos establecerlo desde fuera.

# 	def modelo=(modelo)
# 		@modelo = modelo
# 	end

# 	#Ahora definiremos un comportamiento.
# 	def motor
# 		"El #{@modelo} hace run run"
# 	end
# end

# puts "Creamos el objeto a partir de la clase Vehiculo"
# a1 = Vehiculo.new("Chevrolet")

# pp a1

# puts "Verificamos su comportamiento"
# puts a1.motor

# puts "Ahora veremos que modelo es"
# puts a1.modelo

# puts "Realizaremos el cambio de modelo"
# a1.modelo="Nissan"
# puts a1.modelo


#HACIENDOLO CON EL METODO ATTR_ACCESSOR


# class Vehiculo
# 	#Utlizamos el metodo attr_accessor proporcionado por ruby.
# 	attr_accessor :modelo

# 	#Lo primero que hacemos es inicializar el objeto:
# 	def initialize(modelo)
# 		@modelo = modelo
# 	end

# 	#Ahora definiremos un comportamiento.
# 	def motor
# 		"El #{@modelo} hace run run"
# 	end
# end

# puts "Creamos el objeto a partir de la clase Vehiculo"
# a1 = Vehiculo.new("Chevrolet")

# pp a1

# puts "Verificamos su comportamiento"
# puts a1.motor

# puts "Ahora veremos que modelo es"
# puts a1.modelo

# puts "Realizaremos el cambio de modelo"
# a1.modelo="Nissan"
# puts a1.modelo

#-----------------------------------------------------------
# AHORA LO HAREMOS CON VARIAS VARIABLES DE INSTANCIA

# class Vehiculo
# 	#Utlizamos el metodo attr_accessor proporcionado por ruby.
# 	attr_accessor :modelo, :color, :km

# 	#Lo primero que hacemos es inicializar el objeto:
# 	def initialize(modelo,color="por definir",km = 0)
# 		@modelo = modelo
# 		@color = color
# 		@km = km
# 	end

# 	#Ahora definiremos un comportamiento.
# 	def motor
# 		#Ahora que tenemos el metodo reader y getter, es posible obtener el modelo sin hacer referencia a la variable de instancia.
# 		"El #{modelo} hace run run"
# 	end
# end

# puts "Creamos el objeto a partir de la clase Vehiculo"
# a1 = Vehiculo.new("Chevrolet")
# a2 = Vehiculo.new("Ferrari","Azul",1300)

# pp a1

# puts "Verificamos su comportamiento"
# puts a1.motor

# puts "Ahora veremos que modelo es"
# puts a1.modelo

# puts "Realizaremos el cambio de modelo"
# a1.modelo="Nissan"
# puts a1.modelo

# pp a2
# pp a2.color
# pp a2.km


#---------------------------------------------------------------
#CREAREMOS DOS METODOS UNO PARA QUE CAMBIE TODO Y OTRO PARA QUE ENTREGUE TODA LA INFO


class Vehiculo
	#Utlizamos el metodo attr_accessor proporcionado por ruby.
	attr_accessor :modelo, :color, :km

	#Lo primero que hacemos es inicializar el objeto:
	def initialize(modelo,color="por definir",km = 0)
		@modelo = modelo
		@color = color
		@km = km
	end

	#Ahora definiremos un comportamiento.
	def motor
		#Ahora que tenemos el metodo reader y getter, es posible obtener el modelo sin hacer referencia a la variable de instancia.
		"El #{modelo} hace run run"
	end

	#Con el self, evitamos que ruby se confunda y piense que estamos haciendo otra cosa que no sea definir.
	def cambia_info (m,c,k)
		self.modelo = m
		self.color = c
		self.km = k
	end

	def info
		puts "Tenemos un vehiculo modelo #{modelo}, de color #{color}, y con #{km} kilometros"
	end

end

puts "Creamos el objeto a partir de la clase Vehiculo"
a1 = Vehiculo.new("Chevrolet")
a2 = Vehiculo.new("Ferrari","Azul",1300)

pp a1

puts "Verificamos su comportamiento"
puts a1.motor

puts "Ahora veremos que modelo es"
puts a1.modelo

puts "Realizaremos el cambio de modelo"
a1.modelo="Nissan"
puts a1.modelo

pp a2
pp a2.color
pp a2.km
pp a1.info
a2.cambia_info("Subaru","Verde",5)
pp a2.info

pp Vehiculo.class
pp a2.class