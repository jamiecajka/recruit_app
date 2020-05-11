class SchoolsController < ApplicationController
  before_action :authorize_user

  def index
    @schools = School.all
  end

  def new
    @school = school.new
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
end
