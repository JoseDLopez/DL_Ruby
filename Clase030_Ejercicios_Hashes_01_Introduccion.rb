# Dado el hash = {"x": 1, "y":2}
# Agregar el texto z con el valor 3
# Cambiar el valor de x por 5
# Eliminar la clave y 
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah"
# Invertir el diccionario de forma que los valores sean las llaves y las llaves los
# valores
# ejemplo: x = {"a":"hola" } => {"hola": "a"}

require 'pp'

hash = {"x":1, "y":2}
puts"Mostramos el HASH original"
pp hash

puts "AGregamos el texto z con el valor 3"
hash[:"z"]=3
pp hash

puts "Cambiamos el valor de x por 5"
hash[:x]=5
pp hash

puts "Eliminamos la clave y"
hash.delete(:y)
pp hash

puts "Si el hash tiene una clave llamada z mostrar en pantalla 'yeaah'"
hash.each do |llave,valor|
	puts "yeaah" if llave == :z
end

puts "Invertiremos el diccionario de tal manera que los valores sean las llaves y las llaves los valores"
aux=Hash.new
hash.each do |llave,valor|
	aux[valor]=llave.to_s
end
pp hash
pp aux
