require 'pp'

#EJERCICIO 1
#Crear la clase DICE, el dado tiene valores del 1 al 6.
#Crear un metodo llamado .throw que devuelva un valor al azar entre 1 y 6

class Dice
	def initialize (menor=1,mayor=6)
		@menor = menor
		@mayor = mayor
		puts "Se ha creado un dado con valores del #{menor} al #{mayor}"
	end

	def throw
		@res = Random.new
		@res = @res.rand(@menor..@mayor)
	end
end

dado1 = Dice.new
dado2 = Dice.new(1,10)
pp dado2.throw
pp dado1.throw

puts "FINALIZA EL EJERCICIO 1"
puts "_____________________________________________"

#EJERCICIO 2
#Productos y Stock
#Crear el objeto Producto, este tiene nombre que es asignado en el momento de creación y un stock inicial de 0
#Crear un método reponer que permita aumentar el stock de productos
#Crear un método que permita comprar X elementos siempre y cuando esa cantidad sea menor que el stock, en caso contrario devolver un string con "Error, solo quedan #{stock} items"


class Producto
	def initialize (nombre="Definir")
		@nombre = nombre
		@stock = 0
		puts "Se ha creado el producto #{@nombre} con un stock inicial de #{@stock}"
	end

	def aumenta_stock (stock=1)
		@stock = @stock + stock
		puts "Se ha aumentado el stock de #{@nombre} a #{@stock}"
	end

	def comprar (cantidad=1)
		if (cantidad<= @stock)
			@stock = @stock - cantidad
			puts "Se ha comprado #{cantidad} #{@nombre}(s/es), y quedan #{@stock}"
		else
			puts "No se puede comprar esa cantidad, solo quedan #{@stock}"
		end
	end
end

jabon=Producto.new("Jabon")
pasta=Producto.new("Pasta")
cepillo=Producto.new("Cepillo")
jabon.aumenta_stock(4)
pasta.aumenta_stock
cepillo.aumenta_stock(2)
jabon.comprar
jabon.comprar(3)
pasta.comprar(4)

puts "FINALIZA EL EJERCICIO 2"
puts "_____________________________________________"



#EJERCICIO 3
#Alumnos y notas
#Crear la clase alumno, cada alumno tiene un arreglo de calificaciones (enteros) y un nombre.
#Crear un arreglo con al menos 4 alumnos.
#Calcular el promedio de notas del curso.
#Encontrar al alumno que tiene le promedio de notas más alto y devolver su nombre.

class Alumno
	def initialize (nombre = "Sin nombre", calificaciones = [0,0,0,0])
		@nombre = nombre
		@calificaciones = calificaciones
		puts "Se crea el alumno #{@nombre} cuyas calificaciones son #{@calificaciones}"
	end

	def promedio
		@prom = (@calificaciones.inject(0) { |mem, var| var+=mem })/@calificaciones.length.to_f
	end
end

jose = Alumno.new("Jose")
pedro = Alumno.new("Pedro")
carlos = Alumno.new("Carlos",[10,12,16,25,01])
puts jose.promedio
puts carlos.promedio

puts "FINALIZA EL EJERCICIO 3"
puts "_____________________________________________"


#EJERCICIO 4
#FRACCIONES
#Crear el objeto fracción, la fracción tiene dos parámetros, el numerador y el denominador.

class Fraccion
	def initialize (numerador=1,denominador=1)
		@numerador = numerador
		@denominador = denominador
		puts "Se crea la fraccion #{@numerador}/#{@denominador}"
	end

	def numerador
		@numerador
	end

	def denominador
		@denominador
	end
  
	def opera_con (segunda_fraccion,operacion='suma')
		nuevo_denominador = @denominador * segunda_fraccion.denominador
		if operacion == 'suma'
			nuevo_numerador = (@denominador * segunda_fraccion.numerador) + (@numerador * segunda_fraccion.denominador)
		elsif operacion =='resta'
			nuevo_numerador = (@numerador * segunda_fraccion.denominador) - (@denominador * segunda_fraccion.numerador)
		end

		puts "El resultado de la #{operacion} de #{@numerador}/#{@denominador} con #{segunda_fraccion.numerador}/#{segunda_fraccion.denominador} es: #{nuevo_numerador}/#{nuevo_denominador}"

	end

end

numero1 = Fraccion.new(4,5)
numero2 = Fraccion.new(3,8)

numero1.opera_con(numero2,'suma')
numero1.opera_con(numero2,'resta')

puts "FINALIZA EL EJERCICIO 4"
puts "_____________________________________________"

#EJERCICIO 5
#BARAJA, MANO, CARTA
#Construir la clase cata, debe guardar pinta y numero de carta.
#Construir un arreglo con todas las cartas para conformar la baraja.
#Construir clase Mano, esta contiene 5 cartas siempre.
#La clase Mano, debe tener un metodo que reciba la baraja y coloque la primera carta de la mano al final de la baraja y la primera de la baraja al final de la mano. Despues del intercambio, barajear.


class Carta
	@@baraja=[]
	def initialize (nombre,pinta)
		@nombre = nombre
		@pinta = pinta
		@@baraja.push([@nombre,@pinta])
	end

	def self.baraja
		@@baraja
	end

end

class Mano
	attr_accessor :mano
	def initialize
		@mano = []
		for i in 1..5
			rango = (Carta.baraja.length)-1
			car = Random.new
			car = car.rand(1..rango)
			@mano.push(Carta.baraja[car])
			Carta.baraja.slice!(car)
		end
	end

	def recibe_baraja
		Carta.baraja.push(self.mano.shift)
		Carta.baraja.unshift(self.mano.pop)
		puts "Veamos como queda la baraja con la primera y la ultima puesta"
		pp Carta.baraja
		puts "Ahora vamos a barajear"
		pp Carta.baraja.shuffle
	end

end


carta1 = Carta.new('1','Corazón Negro')
carta2 = Carta.new('2','Corazón Negro')
carta3 = Carta.new('3','Corazón Negro')
carta4 = Carta.new('4','Corazón Negro')
carta5 = Carta.new('5','Corazón Negro')
carta6 = Carta.new('6','Corazón Negro')
carta7 = Carta.new('7','Corazón Negro')
carta8 = Carta.new('8','Corazón Negro')
carta9 = Carta.new('9','Corazón Negro')

carta11 = Carta.new('1','Corazón Rojo')
carta12 = Carta.new('2','Corazón Rojo')
carta13 = Carta.new('3','Corazón Rojo')
carta14 = Carta.new('4','Corazón Rojo')
carta15 = Carta.new('5','Corazón Rojo')
carta16 = Carta.new('6','Corazón Rojo')
carta17 = Carta.new('7','Corazón Rojo')
carta18 = Carta.new('8','Corazón Rojo')
carta19 = Carta.new('9','Corazón Rojo')

carta21 = Carta.new('1','Trebol')
carta22 = Carta.new('2','Trebol')
carta23 = Carta.new('3','Trebol')
carta24 = Carta.new('4','Trebol')
carta25 = Carta.new('5','Trebol')
carta26 = Carta.new('6','Trebol')
carta27 = Carta.new('7','Trebol')
carta28 = Carta.new('8','Trebol')
carta29 = Carta.new('9','Trebol')

pp Carta.baraja
mano1 = Mano.new
puts "Vamos a mostrar la mano"
pp mano1.mano
puts "Vamos a mostrar las cartas"
pp Carta.baraja
puts "Ahora vamos a recibir la baraja y la vamos a barajear"
pp mano1.recibe_baraja
puts "FINALIZA EL EJERCICIO 5"
puts "_____________________________________________"