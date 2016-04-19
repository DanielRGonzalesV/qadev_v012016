# Create a method using the yield statement, so that you can print a message when you call the block
# Research how to call to a block with parameters using the Yield statement. Please give an example of it.

def example_block
   puts "I am not block"
   yield
end
example_block  {puts "I am a block"}



def block_with_parameter
  yield("Hello", 99)
end
 
block_with_parameter{|str,num| puts str + " " + num.to_s}