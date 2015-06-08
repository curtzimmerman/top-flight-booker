class Flight < ActiveRecord::Base

	belongs_to :start_location, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"

	attr_accessor :num_passengers

	def departure_time_formatted
		self.departure_time.strftime("%m/%d/%Y")
	end

	def self.search(params)
		if params
			Flight.where(
								"start_location_id = ? AND destination_id = ? AND departure_time BETWEEN ? AND ?", params[:start_location], params[:destination], params[:departure_time].to_date.beginning_of_day, params["departure_time"].to_date.end_of_day)
		end
	end
end

