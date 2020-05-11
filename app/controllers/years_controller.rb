class YearsController < ApplicationController
  before_action :authorize_user

  def index
    @years = Year.all
  end

  def new
    @year = Year.new
  end

  def create
    @year = Year.new(year_params)
    if @year.save
      flash[:notice] = "New Class Added!"
      redirect_to @year
    else
      flash[:alert] = "New Class Not Created"
      render :new
    end
  end

  def edit
    @year = Year.find(params[:id])
  end

  def update
   @year = Year.find(params[:id])
   if @year.update_attributes(year_params)
     flash[:notice] = "Class Updated!"
     redirect_to @year
   else
     render 'edit'
   end
 end

  private

  def year_params
    params.require(:year).permit(
      :year,
      :active
    )
  end
end
