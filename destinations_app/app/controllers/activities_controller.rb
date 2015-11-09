class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update]
  # before_action :set_destination, only: [:show]

	# def index
	# 	@activities = Activity.all
	# end 

  def show
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
  end

  def update
    if @activity.update_attributes(activity_params)
    redirect_to @activity
  else
    render 'edit'
  end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:stay, :eat, :visit, :drink)
  end

end
