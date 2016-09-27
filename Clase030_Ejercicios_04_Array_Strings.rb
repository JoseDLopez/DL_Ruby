# Dado el arreglo nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# 1.- extraer todos los elementos que excedan mas de 5 caractéres
	# Realizar el ejercicio utilizando el método .each
	# Realizar el ejercicio utilizando el método .select
	# Realizar el ejercicio utilizando el método .reject
# 2. Utilizando .map crear una arreglo con los nombres en miníscula
# 3. Utilizando .select crear un arreglo con todos los nombres que empiezen con P
# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.

require 'pp'

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia","Ray"]
puts "Mostramos nuestro arreglo"
pp nombres

# 1.- extraer todos los elementos que excedan mas de 5 caractéres
	# Realizar el ejercicio utilizando el método .each
	aux=[]
	nombres.each do |elemento|
		aux.push(elemento) if elemento.length <= 5
	end
	puts "Mostramos el arreglo con los elementos cuya longitud es menor a 5 usando .EACH"
	pp aux


	# Realizar el ejercicio utilizando el método .select
	aux= nombres.select{|elemento| elemento.length <=5}
	puts "Mostramos el arreglo con los elementos cuya longitud es menor a 5 usando .SELECT"
	pp aux

	# Realizar el ejercicio utilizando el método .reject
	aux= nombres.reject{|elemento| elemento.length >5}
	puts "Mostramos el arreglo con los elementos cuya longitud es menor a 5 usando .REJECT"
	pp aux


# 2. Utilizando .map crear una arreglo con los nombres en miníscula
aux=nombres.map{|elemento| elemento.downcase}
puts "Mostramos la version original del arreglo"
pp nombres
puts "Mostramos la version en minuscula"
pp aux


# 3. Utilizando .select crear un arreglo con todos los nombres que empiezen con P
aux=nombres.select {|elemento| elemento[0] == 'p' || elemento[0] == 'P'}
puts "Mostramos los nombres que empiezan con P"
pp aux


# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
aux=nombres.map do |elemento|
	elemento.length
end
puts "Mostramos el arreglo con la cantidad de letras de cada elemento"
pp aux