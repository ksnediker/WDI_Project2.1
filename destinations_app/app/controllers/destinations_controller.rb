class DestinationsController < ApplicationController

	def index
		@destinations = Destination.all
	end 

  def show
    @destination = Destination.find(params[:id])
  end

	# def new
 #    @destination = Destination.new
 #  end

 #  def create
 #    @destination = Destination.create(destination_params)
 #    redirect_to destinations_path
 #  end

  # def edit
  #   @destination = Destination.find(params[:id])
  # end

  # def update
  #   @destination = Destination.find(params[:id])
  #   @destination.update_attributes(destination_params)
  #   redirect_to destinations_path
  # end

  # def destroy
  #   @destination = Destination.find(params[:id])
  #   @item.destroy
  #   redirect_to items_path
  # end

  # private

  # def destination_params
  #   params.require(:destination).permit(:gossipgirl, :rupaulsdragrace, :mrrobot)
  # end

end
