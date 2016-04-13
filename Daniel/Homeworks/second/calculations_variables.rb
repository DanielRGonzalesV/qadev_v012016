=begin
	
El siguiente codigo es una practica con operadores aritmeticos en Ruby.

=end
puts "Notas de Examen"
puts ""
Nota1=70
Nota2=80
Nota3=85
puts "Nota1: #{Nota1}"
puts "Nota2: #{Nota2}"
puts "Nota3: #{Nota3}"
puts ""
# el promedio resulta de la suma de todas las notas dividas entre la cantidad de notas.
puts "Promedio Final: #{(Nota1+Nota2+Nota3)/3}"

# para pasar de curso la nota debe ser mayor a 50.
calc = (Nota1+Nota2+Nota3)>3
puts "pasaste de curso? #{calc}"
puts""
#2da nota es 70, 3ra nota es 80.
puts "La suma de las primeras notas 70 + 80 es #{Nota1 + Nota2} "
puts "La diferencia entre 80 y 85 es #{Nota2 - Nota3}"
puts "la Nota1 y la Nota2 son mayores a 90? #{(Nota1 and Nota2) > 90}"
puts "La el promedio final esta en el rango de aprobacion? #{(51...100)===((Nota1+Nota2+Nota3)/3)}"