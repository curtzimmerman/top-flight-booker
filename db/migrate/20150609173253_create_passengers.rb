class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name

      t.timestamps null: false
    end

    add_column :bookings, :passenger_id, :integer


  end
end
