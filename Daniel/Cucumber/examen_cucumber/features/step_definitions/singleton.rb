require 'singleton'
class Report
	include Singleton
	attr_reader :hashValuePurchase
	def initialize
		@hashValuePurchase={'1'=>'balon','2'=> 'arco','3'=> 'zapato'}
	end
	
	
end

puts Report.instance.hashValuePurchase