class CnotesController < ApplicationController

  def index
    @cnotes = Cnote.all
  end

  def new
    @cnote = Cnote.new
    @recruits = Recruit.where('status_id = 1').collect { |r| [r.name, r.id]}
  end

  def create
    @cnote = Cnote.new(cnote_params)
    if @cnote.save
      flash[:notice] = "New Coach's Note Added!"
      redirect_to @cnote
    else
      flash[:alert] = "New Coach's Note Not Created"
      render :new
    end
  end

  def edit
    @cnote = Cnote.find(params[:id])
    @recruits = Recruit.where('status_id = 1').collect { |r| [r.name, r.id]}
  end

  def update
   @cnote = Cnote.find(params[:id])
   if @cnote.update_attributes(cnote_params)
     flash[:notice] = "Coach's Note Updated!"
     redirect_to @cnote
   else
     render 'edit'
   end
 end

  private

  def cnote_params
    params.require(:cnote).permit(
      :text,
      :user,
      :recruit,
      :date
    )
  end
end
