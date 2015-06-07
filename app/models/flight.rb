class Flight < ActiveRecord::Base

	belongs_to :start_location, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"

end

