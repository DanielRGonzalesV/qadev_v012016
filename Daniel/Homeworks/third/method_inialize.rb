class Circle

	def circlePerimeter
	puts "Ingrese un radio para calcular el perimetro"
	radius = gets.chomp.to_i
	puts "El perimetro es: #{radius * 2 * Math::PI}"
	end
	def circleArea
	puts "Ingrese un radio para calcular el perimetro"
	radius = gets.chomp.to_i
	puts "El area es #{radius * radius * Math::PI}"
	end

end

Circle.new.circlePerimeter
Circle.new.circleArea