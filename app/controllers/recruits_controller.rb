class RecruitsController < ApplicationController
  before_action :authorize_user, except: [:new, :create]
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
    @recruits = Recruit.where('status_id = 4').order('last_name ASC')
    @more_recruits = Recruit.where('status_id = 3').order('last_name ASC')
  end

  def new
    @recruit = Recruit.new
  end

  def create
    @recruit = Recruit.new(recruit_params)
    if @recruit.save
      flash[:notice] = "New Recruit Added!"
      redirect_to new_recruit_path
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

 def destroy
    @recruit = Recruit.find(params[:id])
    if @recruit.destroy
      flash[:notice] = 'Recruit has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def recruit_params
    params.require(:recruit).permit(
      :first_name,
      :last_name,
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
      :year_id,
      :status_id,
      :school_id,
      :funnel_id,
      :position_id,
      :level_id
    )
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
