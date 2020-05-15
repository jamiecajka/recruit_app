class RecruitfunnelsController < ApplicationController

  def index
    @recruitfunnels = Recruitfunnel.all
  end

  def new
    @recruitfunnel = Recruitfunnel.new
  end

  def create
    @recruitfunnel = Recruitfunnel.new(recruitfunnel_params)
    if @recruitfunnel.save
      flash[:notice] = "New Recruit/Funnel Added!"
      redirect_to @recruitfunnel
    else
      flash[:alert] = "New Recruit/Funnel Not Created"
      render :new
    end
  end

  def edit
    @recruitfunnel = Recruitfunnel.find(params[:id])
  end

  def update
   @recruitfunnel = Recruitfunnel.find(params[:id])
   if @recruitfunnel.update_attributes(recruitfunnel_params)
     flash[:notice] = "Recrui/Funnel Updated!"
     redirect_to @recruitfunnel
   else
     render 'edit'
   end
 end

  private

  def recruitfunnel_params
    params.require(:recruitfunnel).permit(
      :recruit,
      :funnel,
      :date
    )
  end
end
