#Suma de Numeros Complejos
class Complejos

	attr_reader :real, :imaginario

	def initialize(real,imaginario)
		@real = real
		@imaginario = imaginario
	end

	def +(complejo)

		puts "Realizamos la suma de #{@real} y #{@imaginario} y de #{complejo.real} y #{complejo.imaginario}"

		parte_real = @real + complejo.real
		parte_imaginaria = @imaginario + complejo.imaginario

		Complejos.new(parte_real,parte_imaginaria)

	end


	def to_s
		"#{@real},#{@imaginario}i"
	end
end

puts Complejos.new(2,5) + Complejos.new(2,8)
