# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# Eliminar el último elemento
# Eliminar el primer elemento
# Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un
# número par de elementos entonces remover el que se encuentre en la mitad
# izquierda, ejemplo, en el arreglo [1,2,3,4] se removería el elemento 2
# Borrar el último elemento mientras ese número sea distinto a 1
# Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo

require 'pp'

# Tenemos el array
a = [1,2,3,9,1,4,5,2,3,6,6]

# Eliminar el último elemento
pp "Mostramos el arreglo #{a}"
a.pop
puts "Eliminamos el elemento final del arreglo"
pp a


# Eliminar el primer elemento
a.shift
puts "Elminamos el elemento inicial del arreglo"
pp a


# Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un
# número par de elementos entonces remover el que se encuentre en la mitad
# izquierda, ejemplo, en el arreglo [1,2,3,4] se removería el elemento 2
# pp a.length
n=0
n=1 if a.length % 2 == 0
a.delete_at((a.length / 2)-n)
puts "Mostramos el arreglo eliminando el elemento que esta a la mitad"
pp a


# Borrar el último elemento mientras ese número sea distinto a 1
a.delete_at(-1) if a[-1] != 1
puts "Mostramos que eliminamos el último elemento si este es distinto a 1"
pp a

# Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo
aux =[]
# a.reverse_each {|i| aux.push(i)}
# puts "Monstramos el arreglo original"
# pp a
# puts "Mostramos el arreglo Invertido"
# pp aux

aux =[]
for i in 0..a.length - 1
	aux.push(a.pop)
end
pp a
pp aux