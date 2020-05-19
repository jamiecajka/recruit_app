class FunnelsController < ApplicationController
  before_action :authorize_user
  def index
    @funnels = Funnel.all
  end

  def new
    @funnel = Funnel.new
  end

  def create
    @funnel = Funnel.new(funnel_params)
    if @funnel.save
      flash[:notice] = "New Funnel Added!"
      redirect_to current_user_path
    else
      flash[:alert] = "New Funnel Not Created"
      render :new
    end
  end

  def edit
    @funnel = Funnel.find(params[:id])
  end

  def update
   @funnel = Funnel.find(params[:id])
   if @funnel.update_attributes(funnel_params)
     flash[:notice] = "Funnel Updated!"
     redirect_to @funnel
   else
     render 'edit'
   end
 end

  private

  def funnel_params
    params.require(:funnel).permit(
      :name
    )
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
