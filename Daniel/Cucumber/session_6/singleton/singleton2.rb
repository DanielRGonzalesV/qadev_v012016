require 'singleton'
class Report
	include Singleton
	attr_reader :hashNameID
	attr_reader :hashIDPurchase
	def initialize
		@hashNameID={'1'=>'Gaspar','2'=>'Baltazar','3'=> 'Manuel'}
		@hashIDPurchase={'1'=>'500','2'=> '600','3'=> '700'}
	end
	
	
end

puts Report.instance.hashNameID
puts Report.instance.hashIDPurchase