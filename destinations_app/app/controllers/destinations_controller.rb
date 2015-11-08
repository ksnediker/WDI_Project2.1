class DestinationsController < ApplicationController

	def index
		@destinations = Destination.all
	end 

  def show
    @destination = Destination.find(params[:id])
    @activities = @destination.activities
  end

end
