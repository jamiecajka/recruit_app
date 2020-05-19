class LevelsController < ApplicationController
  before_action :authorize_user
  def index
    @levels = Level.all
  end

  def new
    @level = Level.new
  end

  def create
    @level = Level.new(level_params)
    if @level.save
      flash[:notice] = "New Level Added!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "New Level Not Created"
      render :new
    end
  end

  def edit
    @level = Level.find(params[:id])
  end

  def update
   @level = Level.find(params[:id])
   if @level.update_attributes(level_params)
     flash[:notice] = "Level Updated!"
     redirect_to user_path(current_user)
   else
     render 'edit'
   end
 end

 def destroy
    @level = Level.find(params[:id])
    if @level.destroy
      flash[:notice] = 'Level has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def level_params
    params.require(:level).permit(
      :name
    )
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
