class ActivitiesController < ApplicationController

	def index
		@activities = Activity.all
	end 

  def show
    @activity = Activity.find(params[:id])
  end

  # def new
 #    @destination = Destination.new
 #  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update_attributes(activity_params)
    redirect_to activities_path
  end

#   private

#   def destination_params
#     params.require(:destination).permit(:gossipgirl, :rupaulsdragrace, :mrrobot)
#   end

# end
end
