require 'pp'

#EJERCICIO 1
#Crear la clase DICE, el dado tiene valores del 1 al 6.
#Crear un metodo llamado .throw que devuelva un valor al azar entre 1 y 6

class Dice
	def initialize (menor=1,mayor=6)
		@menor = menor
		@mayor = mayor
		puts "Se ha creado un dado con valores del #{menor} al #{mayor}"
		@res = Random.new
	end

	def throw

		@res = @res.rand(@menor..@mayor)
	end
end

dado1 = Dice.new
dado2 = Dice.new(1,10)
pp dado2.throw

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