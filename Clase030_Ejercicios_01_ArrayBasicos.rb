# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1. Mostrar el primer elemento.
# 2. Mostrar el último elemento.
# 3. Mostrar todos los elementos
# 4. Mostrar todos los elementos junto con un índice
# 5. Mostrar todos los elementos que se encuentren en una posición par
# 6. Determinar si un elemento ingresando pertenece al array o no.

require 'pp'

# Tenemos el array
a = [1,2,3,9,1,4,5,2,3,6,6]

# 1. Mostrar el primer elemento.
pp a[0]
# pp a.first

# 2. Mostrar el último elemento.
pp a[-1]
# pp a.last

# 3. Mostrar todos los elementos
a.each do |i|
	pp i
end

# 4. Mostrar todos los elementos junto con un índice
a.each_with_index do |value,index|
	pp "Elemento #{value}, index es: #{index}"
end

# 5. Mostrar todos los elementos que se encuentren en una posición par
a.each_with_index do |value,index|
	pp "Elemento posicion par cuyo valor es #{value}, y el index es #{index}" if index % 2 == 0
end

# 6. Determinar si un elemento ingresando pertenece al array o no.
consultar = gets.chomp.to_i
pp consultar
pp "El elemento #{consultar}, no existe en el arreglo" if a.include?(consultar) == false
pp "El elemento #{consultar}, si existe en el arreglo" if a.include?(consultar) == true