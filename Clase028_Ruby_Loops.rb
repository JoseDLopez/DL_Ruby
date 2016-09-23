#PRIMERA CLASE RUBY
#LOOPS EN RUBY
#22-SEP-16

#Mostraremos todos los divisores de 840 con while, for, times:


#Haciendolo con while:
numero = 840
i=1
while i<=840
	if 840 % i ==0
		puts(i)
	end
	i +=1
end

#Haciendolo con for
i=1
for i in 1..840
	if 840 % i ==0
		puts(i)
	end
end

#Haciendolo con times
i=1
840.times do
	if 840 % i ==0
		puts(i)
	end
	i +=1
end