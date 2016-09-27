# Se tiene un ejercicio con una cantidad par de arreglos, se pide agruparlos de a dos.
# ejemplo: [1,2,3,4,5,6,7,8] resultado: [[1,2],[3,4],[5,6],[7,8]]
# hint: each_slice
require 'pp'

arreglo_par = [1,2,3,4,5,6,7,8,9,10]
arreglo_agrupado = arreglo_par.each_slice(2).to_a
pp arreglo_par
pp arreglo_agrupado