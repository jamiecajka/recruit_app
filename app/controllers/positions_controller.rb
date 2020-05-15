class PositionsController < ApplicationController

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
      redirect_to @position
    else
      flash[:alert] = "New Position Not Created"
      render :new
    end
  end

  def edit
    @position = position.find(params[:id])
  end

  def update
   @position = Position.find(params[:id])
   if @position.update_attributes(position_params)
     flash[:notice] = "Position Updated!"
     redirect_to @position
   else
     render 'edit'
   end
 end

  private

  def position_params
    params.require(:position).permit(
      :name
    )
  end
end
