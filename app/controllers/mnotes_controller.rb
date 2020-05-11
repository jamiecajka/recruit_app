class MnotesController < ApplicationController
  before_action :authorize_user

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

  private

  def mnote_params
    params.require(:mnote).permit(
      :text,
      :recruit
    )
  end
end
