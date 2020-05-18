class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "New User Added!"
      redirect_to @user
    else
      flash[:alert] = "New User Not Created"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
   @user = User.find(params[:id])
   if @user.update_attributes(user_params)
     flash[:notice] = "User Updated!"
     redirect_to @user
   else
     render 'edit'
   end
 end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :encrypted_password,
      :active,
      :key
    )
  end
end
