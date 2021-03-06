class UsersController < ApplicationController
  def new

  end

  def index
  end

  def create
  	@user = User.new(app_params)
  	# @user = User.new(params[:user])
  	if @user.save
  		redirect_to user_session_path
  	else
  		redirect_to new_user_session_path
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def delete
  	redirect_to root_path
  end

  private
  def app_params
  	params.require(:user).permit(:provider, :uid, :name)
  end
end