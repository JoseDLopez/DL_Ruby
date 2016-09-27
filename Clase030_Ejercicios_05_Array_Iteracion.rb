# Dado los siguientes arreglos
# a = [1,2,3]
# b = [:azul, :rojo, :amarillo]
# c = ["Tacos", "Quesadillas", "Hamburguesas"]

require 'pp'
a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

# 1- Se pide iterar para mostrar el color con su correspondiente amarillo
for i in 0..a.length-1
	puts "#{a[i]} :#{b[i]}, #{c[i]}"
end

# 2- Se pide iterar para mostrar el color con su correspondiente amarillo inverso
for i in 0..a.length-1
	puts "#{a[i]} :#{b[a.length-i-1]}, #{c[i]}"
end

# 3.- Iterando los arreglos anteriroes crear un único arreglo final con:
# [1, :azul, Tacos, 2, :rojo, Quesadillas, 3,:amarillo, "Hamburguesas"]
all =[]
for i in 0..a.length-1
	all.push(a[i])
	all.push(b[i])
	all.push(c[i])
end
pp all
