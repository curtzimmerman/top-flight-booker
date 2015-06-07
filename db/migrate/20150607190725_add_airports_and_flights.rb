class AddAirportsAndFlights < ActiveRecord::Migration
  def change
  	create_table :airports do |t| 
  		t.string :code

  		t.timestamps null: false
  	end

  	create_table :flights do |t|
  		t.references :start_location, class_name: "Airport"
  		t.references :destination, class_name: "Airport"
  		t.datetime :departure_time
  		t.integer :flight_duration_in_seconds

  		t.timestamps null: false
  	end

  end
end
