
	module Convert
		def Convert.minToHour
			puts "Ingrese los minutos que desea convertir a horas"
			mth = gets.chomp.to_i

			puts "Los #{mth} minutos equivalen a #{mth/60} horas"
		end
		def Convert.hourToDay
			puts "Ingrese las horas que desea convertir a dias"
			htd = gets.chomp.to_i
			puts "Los #{htd} horas equivalen a #{htd/24} dias"
		end
		def Convert.dayToMonth
			puts "Ingrese los dias que desea convertir a meses"
			dtm = gets.chomp.to_i
			puts "Los #{dtm} dias equivalen a #{dtm/30} dias"
		end
		
	end



require 'singleton'  

class Registration

include Singleton
include Convert
	
	attr_accessor :myhash

	def initialize
		@id = nil
		@username = nil
		 @myhash= {}
		
	end 

	def quaUser

			puts "Ingrese la cantidad (entre 3 y 15) de usuarios que desea ingresar"
				length=gets.chomp.to_i

				(length >= 3)&&(length <=15) ? (fillData(length)) : (quaUser)
				
	end

	def fillData(length)

			i=0
		begin

			puts "Ingrese una key valida:" 
			@id=gets.chomp.to_i.to_s
			puts "Ingrese un nombre de usuario valido:" 
			@username=gets.chomp.to_s
				
			(@username =~ /[a-z0-9]{1,11}/) ? (@myhash[@id]=@username) : (i=i-1)
					
			i=i+1
					
		end while i<length 
	end

	def converter 

		puts "Que tipo de conversion quiere el usuario?"
		puts
		puts "a) De minutos a horas"
		puts "b) De horas a dias"
		puts "c) De dias a meses"
		opc = gets.chomp.to_s
		puts

		case opc

			when /[a]/; Registration.instance.minToHour
			when /[b]/; hourToDay
			when /[c]/; dayToMonth
			else; print "Opcion invalida" 
		end

	end

end

registro = Registration.instance
registro.quaUser
registro.converter




=begin

require 'singleton'  
 class Base  
  include Singleton  
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	 def some
         @value
 	end
 end  
 b1 = Base.instance  
 p b1.any # Output => 10  
 b2 = Base.instance  
 p b2.some # Output => 10 
=end