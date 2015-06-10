class BookingsController < ApplicationController
	def new
		@booking = Booking.new
		@flight = Flight.find(params[:flight_id])
		params[:num_passengers].to_i.times do
			@booking.passengers.build
		end
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			flash[:success] = "Successfully created"
			redirect_to root_path
		else
			flash.now[:danger] = "Error"
			render 'new'
		end
	end


	private

		def booking_params
			params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
		end
end
