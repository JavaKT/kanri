class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  private
  params.require(:user).permit(:email,:password,:password_confirmation,
                                :username,:department,:image,:introduciton,:contact)
                                
end
