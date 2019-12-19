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
          if @user.save
            sign_in User.find(@user.id) unless user_signed_in?
            redirect_to root_path
          else render :new
        end
      else
        render :new
      end
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(edit_params)
    if @user.update_attributes(edit_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end


  private
  def user_params
  params.require(:user).permit(:email,:password,:password_confirmation,
                                :username,:department,:image,:introduction,:contact,:post,:number)
  end

  def edit_params
  params.require(:user).permit(:username,:department,:image,:introduction,:contact,:post,:number)
  end
end
