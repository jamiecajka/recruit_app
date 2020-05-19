class MnotesController < ApplicationController
  before_action :authorize_user

  def show
    @mnote = Mnote.find(params[:id])
    @recruit = @mnote.recruit
  end

  def index
    @mnotes = Mnote.all
  end

  def new
    @mnote = Mnote.new
  end

  def create
    @mnote = Mnote.new(mnote_params)
    if @mnote.save
      flash[:notice] = "New Misc Note Added!"
      redirect_to @mnote
    else
      flash[:alert] = "New Misc Note Not Created"
      render :new
    end
  end

  def edit
    @mnote = Mnote.find(params[:id])
    @recruits = Recruit.where('status_id = 1').collect { |r| [r.name, r.id]}
  end

  def update
   @mnote = Mnote.find(params[:id])
   if @mnote.update_attributes(mnote_params)
     flash[:notice] = "Misc Note Updated!"
     redirect_to @mnote
   else
     render 'edit'
   end
 end

 def destroy
    @mnote = Mnote.find(params[:id])
    if @mnote.destroy
      flash[:notice] = 'Note has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def mnote_params
    params.require(:mnote).permit(
      :text,
      :recruit_id
    )
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
