class Flight < ActiveRecord::Base

	belongs_to :start_location, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"
	has_many :bookings
	has_many :passengers, through: :bookings

	attr_accessor :num_passengers

	def departure_time_formatted
		self.departure_time.strftime("%m/%d/%Y")
	end

	def self.search(params)
		if params.has_key?(:departure_time)
			range = (params[:departure_time].to_date.beginning_of_day..params[:departure_time].to_date.end_of_day)
			result = Flight.where(departure_time: range)
			params.delete(:departure_time)
			result.where(params)
		else
			Flight.where(params)
		end
	end
end

