class FlightsController < ApplicationController
	def index
		@flights = Flight.all
		@start_locations = Airport.all.map { |a| [a.code, a.id]}
		@destinations = Airport.all.map { |a| [a.code, a.id]}
		@departure_times = @flights.all.order("departure_time ASC").uniq
		@num_passengers = (1..4).map { |n| [n,n] }
		@booking = Booking.new

		conditions = {}
		if params.has_key?(:search)
			conditions[:start_location] = params[:search][:start_location] unless params[:search][:start_location].blank?
			conditions[:destination] = params[:search][:destination] unless params[:search][:destination].blank?
			conditions[:departure_time] = params[:search][:departure_time] unless params[:search][:departure_time].blank?
			
			@results = Flight.search(conditions)
		end
	end

	private

		def search_params
			params.require(:search).permit(:start_location, :destination, :departure_time, :num_passengers)
		end

end