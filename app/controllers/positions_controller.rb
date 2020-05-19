class PositionsController < ApplicationController
  before_action :authorize_user
  def index
    @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      flash[:notice] = "New Position Added!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "New Position Not Created"
      render :new
    end
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
   @position = Position.find(params[:id])
   if @position.update_attributes(position_params)
     flash[:notice] = "Position Updated!"
     redirect_to user_path(current_user)
   else
     render 'edit'
   end
 end

 def destroy
    @position = Position.find(params[:id])
    if @position.destroy
      flash[:notice] = 'Position has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def position_params
    params.require(:position).permit(
      :name
    )
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
