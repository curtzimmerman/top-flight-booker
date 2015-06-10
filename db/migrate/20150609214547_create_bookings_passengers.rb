class CreateBookingsPassengers < ActiveRecord::Migration
  def change
    create_table :tickets, id: false do |t|
    	t.references :booking
    	t.references :passenger
    end
  end
end
