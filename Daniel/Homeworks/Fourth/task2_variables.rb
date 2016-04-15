class Person


	def initialize (name)
		@name = name

	end

	def saludo
		puts "Hi " + @name.to_s
		
	end

	def saludoCompleto (apellido)

		puts "Hi " + @name.to_s + " " + apellido.to_s + ", have a nice day"
	end

end

persona = Person.new("Daniel")
persona.saludo
persona.saludoCompleto("Gonzales")
