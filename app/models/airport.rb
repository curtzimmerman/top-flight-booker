class Airport < ActiveRecord::Base

	has_many :departures, class_name: "Flight", foreign_key: :start_location_id
	has_many :arrivals, class_name: "Flight", foreign_key: :destination_id


end