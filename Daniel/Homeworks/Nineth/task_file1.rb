=begin
open – open a file with some specific mode (read by default – w+ for read and write)
close - Closes the file. Like File->Save.. in your editor.
read - Reads the contents of the file. You can assign the result to a variable.
readline - Reads just one line of a text file.
truncate - Empties the file. Watch out if you care about the file.
write('stuff') - Writes "stuff" to the file.
-----------------------------------------------------
file_example = File.open('test.txt', 'w+')
file_example.truncate(0)
file_example.write('line1')
file_example.close
file_example = File.open('test.txt')
print file_example.read
------------------------------------------------------
 Create a method that is going to :
1- ask for a filename and extension  .E.g test.txt
2- Then you will delete all the content of the file (in case that already exist)
3- Then ask for the user for the amount of lines to be added
4- According the amount of lines, ask for each line.
5- Close the file
6- Finally print the values of the file (also be sure that file is created in your current directory)
7. Change the mode of the file in order to add ay new line to tehe xisting file. Run the script and push the code and the result

=end

class MyFiles

	def searchFile
		
		puts "Ingrese el archivo con su respectiva extension que quiere editar"
		path = gets.chomp.to_s

		file_user = File.open(path, "w+")
		file_user.truncate(0)

		puts "Cuantas lineas desea escribir?"
		lines = gets.chomp.to_i

		index_line = 1

		lines.times do 
		puts "escriba la linea #{index_line}"
		text = gets.chomp.to_s
		file_user.write(text)
		index_line +=1
		end
	
		file_user.close
		file_user = File.open(path)
		puts"El texto escrito es:"
		puts
		puts file_user.read
	end


end

myfile = MyFiles.new
myfile.searchFile