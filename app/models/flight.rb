class Flight < ActiveRecord::Base

	belongs_to :start_location, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"

	attr_accessor :num_passengers

	def departure_time_formatted
		self.departure_time.strftime("%m/%d/%Y")
	end
end

