class YearsController < ApplicationController
  before_action :authorize_user, except: [:new, :create]
  def index
    @years = Year.all
  end

  def new
    @year = Year.new
    @active_options = Year::OPTIONS
  end

  def create
    @year = Year.new(year_params)
    if @year.save
      flash[:notice] = "New Class Added!"
      redirect_to current_user_path
    else
      flash[:alert] = "New Class Not Created"
      render :new
    end
  end

  def edit
    @year = Year.find(params[:id])
    @active_options = Year::OPTIONS
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

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
