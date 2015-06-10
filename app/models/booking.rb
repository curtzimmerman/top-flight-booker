class Booking < ActiveRecord::Base
	belongs_to :flight
	has_many :passengers, through: :tickets
	has_many :tickets
	accepts_nested_attributes_for :passengers

	validates :flight, presence: true

end
