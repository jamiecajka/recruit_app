class RecruitsController < ApplicationController
  before_action :authorize_user

  def index
    @recruits = Recruit.all
  end

  def new
    @recruit = Recruit.new
  end

  def create
    @recruit = Recruit.new(recruit_params)
    if @recruit.save
      flash[:notice] = "New Recruit Added!"
      redirect_to @recruit
    else
      flash[:alert] = "New Recruit Not Created"
      render :new
    end
  end

  def edit
    @recruit = Recruit.find(params[:id])
  end

  def update
   @recruit = Recruit.find(params[:id])
   if @recruit.update_attributes(recruit_params)
     flash[:notice] = "Recruit Updated!"
     redirect_to @recruit
   else
     render 'edit'
   end
 end

  private

  def recruit_params
    params.require(:recruit).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
      :phone,
      :gpa,
      :act,
      :height,
      :email,
      :basketball,
      :academic,
      :ppg,
      :o_rebound,
      :d_rebound,
      :two,
      :three,
      :free_throw,
      :assists,
      :steals,
      :turn_overs,
      :blocks,
      :minutes,
      :school,
      :position,
      :funnel,
      :level,
      :class
    )
  end
end
