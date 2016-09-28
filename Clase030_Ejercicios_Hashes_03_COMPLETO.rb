# Se tiene un hash con el inventario de un negocio de computadores.
# inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# Se pide:
# Crear un menú de 4 opciones, o sea el usuario puede ingresar, 1, 2, 3 o 4 y según
# eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podrá ingresar un item y su stock en un solo string y
# agregarlo al hash, para separar el nombre del stock el usuario debe utilizar una
# coma.
# Ejemplo del input "Pendrives, 100"
# Después de ingresar el valor
# Si el usuario igresa 2, podrá ver el stock total (suma del stock de cada item) que
# hay en el negocio
# Si el usuario ingresa 3 podrá ver el ítem que tiene la mayor cantidad de stock
# Si el usuario ingresa 4 podrá ingresar preguntarle al sistema si un item existe en el
# inventario o no, por ejemplo el usuario ingresará "Notebooks" y el programa
# responderá "si"
# El programa debe repertirse hasta que el usuario ingrese 5
require 'pp'

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
puts "Mostramos el hash original"
pp inventario

puts "Ingrese su opcion: 1-> Ingresar Item y agregar. 2-> Ver stock. 3->Item con mayor cantidad. 4->Ver existencia de item"
usuario = gets.chomp.to_i
# puts usuario
while usuario != 1 && usuario != 2 && usuario != 3 && usuario !=4 do
	puts "Favor ingrese una opcion del 1 al 4"
	usuario = gets.chomp.to_i
end

