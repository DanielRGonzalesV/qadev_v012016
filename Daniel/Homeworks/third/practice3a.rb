class Datos
	def initialize (name, edad)
		@name = name
		@edad = edad
	end

	def getEdad
		return @edad
	end
end	


class Calculate
	def edadToMin (edad)
		return "#{edad*365*24*60}"
	end
end



puts "Ingrese un nombre:"
nombre = gets.chomp.to_s
puts "Ingrese su edad:"
edad = gets.chomp.to_i

persona = Datos.new(nombre, edad)
puts "Su edad de " + persona.getEdad.to_s + " años, en minutos son " + Calculate.new.edadToMin(persona.getEdad)
