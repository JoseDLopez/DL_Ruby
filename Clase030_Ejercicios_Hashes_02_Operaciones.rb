# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el
# valor es el precio de este.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro
# 2. Obtener el plato mas barato
# 3. Sacar el promedio del valor de los platos
# 4. Crear un arreglo con solo los nombres de los platos
# 5. Crear un arreglo con solo los valores de los platos
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1 una
# palabra.
require 'pp'

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts "Mostramos el menú"
pp restaurant_menu

# 1. Obtener el plato mas caro
# 2. Obtener el plato mas barato

clave_caro=""
clave_barato=""
restaurant_menu.each do |key,value|
	clave_caro = key if clave_caro==""
	clave_caro = key if restaurant_menu[clave_caro] < value

	clave_barato = key if clave_barato==""
	clave_barato = key if restaurant_menu[clave_barato] > value 
end

puts "Mostramos el plato mas caro"
puts "El plato mas caro es #{clave_caro} con costo de #{restaurant_menu[clave_caro]}"

puts "Mostramos el plato mas barato"
puts "El plato mas barato es #{clave_barato} con costo de #{restaurant_menu[clave_barato]}"

# 3. Sacar el promedio del valor de los platos

acum=0
restaurant_menu.each do |key,value|
	acum+=value
end
puts "Mostraremos el promedio de los platos"
promedio = acum.to_f / restaurant_menu.length.to_f
pp promedio


# 4. Crear un arreglo con solo los nombres de los platos
# 5. Crear un arreglo con solo los valores de los platos
nombres=[]
valores=[]
restaurant_menu.each do |key,value|
	nombres.push(key)
	valores.push(value)
end
puts "Mostraremos los arreglos correspondientes a nombres de playos y valores"
pp nombres
pp valores

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each do |llave,valor|
	restaurant_menu[llave]=valor*1.19
end

# menu_con_iva=restaurant_menu.map do |llave,valor|
# 	restaurant_menu[llave]=valor*1.19
# 	# valor = valor *1.19
# end
puts "Mostramos meno con iva"
pp restaurant_menu
# pp menu_con_iva

# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1 una
# palabra.

restaurant_menu.each do |llave,valor|
	restaurant_menu[llave] = valor * 0.2 if llave.chomp.include?(" ") == true
end

puts "Hacemos descuento al plato que sea con dos palabras"
pp restaurant_menu
