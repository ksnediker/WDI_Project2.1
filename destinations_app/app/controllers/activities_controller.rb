class ActivitiesController < ApplicationController

	# def index
	# 	@activities = Activity.all
	# end 

  def show
    @activity = Activity.find(params[:id])
    @user = @user.activities
    @destination = @destination.activities
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to @activity
    else
      render :action => :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update_attributes(activity_params)
    redirect_to @activity
  else
    render 'edit'
  end
  end

  private

  def activity_params
    params.require(:activity).permit(:stay, :eat, :visit, :drink)
  end

end
