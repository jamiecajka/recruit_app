class ApplicantsController < ApplicationController
  def index
    @applicants = Applicant.all
  end

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)
    if @applicant.save
      flash[:notice] = "New Applicantion Added!"
      redirect_to @applicant
    else
      flash[:alert] = "New Applicantion Not Created"
      render :new
    end
  end

  def edit
    @applicant = Applicant.find(params[:id])
  end

  def update
   @applicant = Applicant.find(params[:id])
   if @applicant.update_attributes(applicant_params)
     flash[:notice] = "Applicant Updated!"
     redirect_to @applicant
   else
     render 'edit'
   end
 end

  private

  def applicant_params
    params.require(:applicant).permit(
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
      :status,
      :class
    )
  end
end
