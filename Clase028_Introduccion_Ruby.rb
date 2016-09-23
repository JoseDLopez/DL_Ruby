#PRIMERA CLASE RUBY
#INTRODUCCION
#22-SEP-16

#PRIMER EJERCICIO
##SE DEBE INTRODUCIR GRADOS EN CELCIUS Y DEVOLVER EN FAHRENHEIT

	#Con el comando "puts" se logra imprimir en pantalla
	puts "Introduzca los grados CELCIUS"

	#Con el comando gets, solicitiamos al cliente que introduzca una variable por consola.
	#Usando el chomp, logramos limpiar el salto de linea que se incluye al introducir la informacion
	celcius = (gets.chomp).to_i #Usando el ".to_i" logramos convertir esto en integer

	#Realizamos la operacion:
	far = (celcius * 1.80000) + 32

	#Imprimimos el resultado
	puts "En fahrenheit son: #{far}" #Usando el "#{}" logramos interpolar variables dentro de una cadena de caracteres.




#SEGUNDO EJERCICIO
#El usuario ingresa dos numeros, se debe determinar cual es el mayor

#Introducimos los valores a y b
puts "Introduzca numero a:"
a = (gets.chomp).to_i

puts a.class
puts "Introduzca numero b:"
b = (gets.chomp).to_i


#Realizamos la compracion
if a == b
	puts "Los numeros son identicos"
elsif a > b
	puts "El numero #{a} es el mayor"
else
	puts "El numero #{b} es el mayor"
end
