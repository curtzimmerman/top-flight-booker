class PassengerMailer < ApplicationMailer
	default from: "notifications@flightbooker.com"

	def thank_you_email(booking)
		@booking = booking
		@url = booking_url(@booking)
		@booking.passengers.each do |passenger|
			@passenger = passenger
			mail(to: @passenger.email, subject: "Thank You for choosing Flight Booker")
		end
	end
end
