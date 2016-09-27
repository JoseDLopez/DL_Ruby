# Dado los arrays:
# a = [1,2,3,9,12,31, "domingo"]
# b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

# 1. Se pide obtener la concatenación de ambos
# [1,2,3,9,12,31, "domingo", "lunes","martes", "miércoles", "jueves","viernes", "sábado", "domingo"]
# En la concatenación los elementos que están en 1 y en 2 aparecen dos veces en
# los resultados.

# 2. Se pide obtener la unión de ambos, o sea:
# [1,2,3,9,12,31, "domingo", "lunes","martes", "miércoles", "jueves","viernes", "sábado"]
# En la unión de dos conjuntos los elementos que se repiten tanto en el 1o como en
# el segundo no se muestran dos veces en el resultado final.

# 3. Se pide obtener la intersección de ambos.
# ["domingo"]
# En la intersección solo resultan los elementos que se encuentran en ambos
# conjuntos.

# 4. Se pide agrupar en pares los elementos de cada conjunto.
# [[1, "lunes"], [2, "martes"], [3, "miércoles"],[9, "jueves"], [12, "viernes"], [31, "sébado"],["domingo", "domingo"]]

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

# 1. Se pide obtener la concatenación de ambos
# [1,2,3,9,12,31, "domingo", "lunes","martes", "miércoles", "jueves","viernes", "sábado", "domingo"]
# En la concatenación los elementos que están en 1 y en 2 aparecen dos veces en
# los resultados.
require 'pp'

concat=a+b
puts "Mostramos la union de a y b"
pp concat


# 2. Se pide obtener la unión de ambos, o sea:
# [1,2,3,9,12,31, "domingo", "lunes","martes", "miércoles", "jueves","viernes", "sábado"]
# En la unión de dos conjuntos los elementos que se repiten tanto en el 1o como en
# el segundo no se muestran dos veces en el resultado final.
concat = a | b
puts "Mostramos la union entre a y b sin duplicados"
pp concat

# 3. Se pide obtener la intersección de ambos.
# ["domingo"]
# En la intersección solo resultan los elementos que se encuentran en ambos
# conjuntos.
concat = a & b
puts "Mostramos la intersección entre a y b"
pp concat

# 4. Se pide agrupar en pares los elementos de cada conjunto.
# [[1, "lunes"], [2, "martes"], [3, "miércoles"],[9, "jueves"], [12, "viernes"], [31, "sébado"],["domingo", "domingo"]]
a.each_with_index do |value,index|
	concat[index]=[a[index],b[index]]
end
puts "Mostramos la agrupacion de a y b"
pp concat




