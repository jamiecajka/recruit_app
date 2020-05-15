class RecruitsController < ApplicationController
  def show
    @recruit = Recruit.find(params[:id])
    @school = @recruit.school
    @year = @recruit.year
    @funnel = @recruit.funnel
    @position = @recruit.position
    @cnotes = Cnote.all
    @mnotes = Mnote.all
    @status = @recruit.status
  end

  def index
    @recruits = Recruit.where('status_id = 1')
    @more_recruits = Recruit.where('status_id = 3')
  end

  def new
    @recruit = Recruit.new
    @status_options = Recruit::OPTIONS
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
    @status_options = Recruit::OPTIONS
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
      :year,
      :status
    )
  end
end
