# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# Eliminar todos los números pares del arreglo.
# Obtener la suma de todos los elementos del arreglo.
	# Utilizando .each
	# Utilizando .inject
# Obtener el promedio.
# Incrementar todos los elementos en una unidad.
	# Utilizando .each
	# Utilizando .map
require 'pp'

a = [1,2,3,9,1,4,5,2,3,6,6]

# Eliminar todos los números pares del arreglo.
puts "Mostramos el arreglo original"
pp a

puts "Mostramos el arreglo luego de haber elminado los números pares"
a.delete_if {|elemento| elemento % 2 == 0}
pp a


# Obtener la suma de todos los elementos del arreglo.
	# Utilizando .each
	suma=0
	a.each do |i|
		suma+=i
	end
	puts "Mostramos la suma de todos los elementos con each: #{suma}"

	# Utilizando .inject
	suma= a.inject(0){|valor,acum| acum+=valor}
	puts "Mostramos la suma de todos los elementos con inject: #{suma}"


# Obtener el promedio.
promedio = (a.inject(0){|valor,acum| acum+=valor}).to_f / a.length.to_f
puts "Imprimimos el promedio: #{promedio}"


# Incrementar todos los elementos en una unidad.
	# Utilizando .each
	aux=[]
	a.each do |valor|
		aux.push(valor+1)
	end
	puts "Mostramos el original a"
	pp a
	puts "Mostramos la version incrementada en uno"
	pp aux
	a = aux.dup
	pp a



	# Utilizando .map
	aux = a.map do |value|
		value + 1
	end
	puts "Mostramos el original a"
	pp a
	puts "Mostramos la version incrementada en uno"
	pp aux
	a = aux.dup
	pp a