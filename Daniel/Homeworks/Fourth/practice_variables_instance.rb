class Customer
	def initialize(id, name, addr)
		@cust_id=id
		@cust_name = name
		@cut_addr = addr
		
	end

	def display_details()
		puts "Customer id #{@cust_id}"
		
	end

end

cust1 = Customer.new("1","Ana","Sopocachi, LP")
cust1.display_details()