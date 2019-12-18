class RegisrationsController < ApplicationController
  before_action :authenticate_user!,except: [:new, :create]

  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.valid? 
      if @user.errors.messages.blank? && @user.errors.details.blank?
          sign_in User.find(@user.id) unless user_signed_in?
          redirect_to root_path
      else
        render :new
      end
  end

  private
  def user_params
  params.require(:user).permit(:email,:password,:password_confirmation,
                                :username,:department,:image,:introduciton,:contact,:post)
  end
end
