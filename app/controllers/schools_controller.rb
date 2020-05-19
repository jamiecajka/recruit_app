class SchoolsController < ApplicationController
  before_action :authorize_user, except: [:new, :create]
  def show
    @school = School.find(params[:id])
  end

  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    if @school.save
      flash[:notice] = "New School Added!"
      redirect_to @school
    else
      flash[:alert] = "New School Not Created"
      render :new
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
   @school = School.find(params[:id])
   if @school.update_attributes(school_params)
     flash[:notice] = "School Updated!"
     redirect_to @school
   else
     render 'edit'
   end
 end

 def destroy
    @school = School.find(params[:id])
    if @school.destroy
      flash[:notice] = 'School has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def school_params
    params.require(:school).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
      :coach,
      :phone
    )
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
