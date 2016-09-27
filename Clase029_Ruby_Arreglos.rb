#CLASE 29 ARREGLOS

# Iterar el siguiente array, cada vez que el elemento sea
# divisible por 3 imprimir "foo" junto al elemento y si el índice
# es divisible por 4 entonces imprimir bar junto al índice

require 'pp'

array = [1,2,3,4,5,6,7,8,9,10,11,12]

array.each_with_index do |value, index|
	if value % 3 == 0
		puts "foo #{value}"
	end

	if index % 4 == 0 && index != 0
		puts "bar #{index}" 
	end

	#SOLUCION EXPRESS
	# puts value if value % 3 ==0
	# puts index if index % 4 == 0
end

#Si queremos contar cuantos datos tiene el arreglo lo podemos hacer con el ".count" o  con el ".length"
puts array.count
puts array.length



#OBTENER El promedio de un arreglo iterando y guardando la suma

a = [1,2,6,1,7,2,3]
suma = 0

a.each do |i|
	suma  += i
end 

promedio = 0
promedio = suma.to_f / a.length.to_f
promedio = promedio.round(2)
puts "suma #{suma}"
puts "El promedio es #{promedio}"

#Crear un arreglo con tres elementos, remueva el ultomo elemento y agregue "woops" al final.

# Cree un arreglo con mínimo 3 elementos, remueva el primero y
# agregue el elemento “woops” al principio


arreglo_n = [3,5,2,1,6,5]
arreglo_n3 = [5,3,1]

arreglo_n3.pop
arreglo_n3.push("woops") 

pp arreglo_n3

arreglo_n.shift
arreglo_n.unshift("woops")
pp arreglo_n

#Asignar un texto lorem ipsun a una variable luego imprimir solo una palabra por medio

texto = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates possimus hic consequatur sit animi iure sequi tempora accusantium officia eius laudantium, excepturi pariatur voluptatem iste corporis nemo laborum voluptate mollitia."
medio = true
arreglo_texto= texto.split(" ")
pp arreglo_texto

arreglo_texto.each_with_index do |value, index|
	if medio == true
		pp "#{value} y el indice es #{index}"
	end
	medio = !medio
end


#HASH
#-Del hash creado anteriormente con los nombres de tus compañeros
# como clave y edades de valores, crea 2 arreglos, uno con todas las
# claves del hash y otro con todos los valores de éste.

edades_hash = {"Oscar": 27, "Javier": 31, "Francisca": 32, "Alejandro": 19, "Alejandro": "casa"} #Esto demuestra que si puede tener dos llaves iguales pero solo toma en cuenta la ultima
pp edades_hash

arreglo_edades_claves = edades_hash.keys
arreglo_edades_valores = edades_hash.values

edades_hash["Alejandro"]= "apartamento"

pp arreglo_edades_valores
pp arreglo_edades_claves


# Crear un arreglo de hashes, cada hash contiene un array con datos
# de persona: 
# - Nombre Completo 
# - País 
# - Continente 
# - Género 
#  
# Poblar con muchos datos 
# 2.- Contar la cantidad de personas de la lista 
# 3.- Generar un array con cada continente, eliminar repeticiones,
# considerar que pueden haber nombres escritos con mayúscula y
# minúscula 
# 4.- Armar un hash, donde cada Key sea un continente y el value un
# array con los países de cada continente 
# 5.- Generar una lista con todas las personas llamadas pedro 
# 6.- Hacer dos listas de personas, una por cada genero 

arreglo_de_hashes = [{"Nombre":"Jose", "Pais":"Venezuela","Continente":"Latinoamerica","Genero":"masculino"},{"Nombre":"Carlos", "Pais":"Chile","Continente":"Latinoamerica","Genero":"masculino"},{"Nombre":"Jhon", "Pais":"España","Continente":"Europa","Genero":"masculino"},{"Nombre":"Xu", "Pais":"China","Continente":"Asia","Genero":"femenino"},{"Nombre":"Amy", "Pais":"USA","Continente":"Norteamerica","Genero":"femenino"}]

pp arreglo_de_hashes

pp arreglo_de_hashes.count

continentes = arreglo_de_hashes.collect {|x| x[:Continente]} ##EN ESTE punto el key pasa a ser un simbolo, por ello debe ser llamado con los dos puntos
pp continentes

#Para eliminar los repetidos los podemos agrupar por nombre y contar
continentes = continentes.group_by{|x| x}
pp continentes



