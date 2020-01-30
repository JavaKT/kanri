class RegisrationsController < ApplicationController
  before_action :authenticate_user!,except: [:index,:new,:create]
  before_action :set_user, only: [:edit, :update]

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
  end

  def update
    if @user.id == current_user.id
      @user.update(edit_params)
        if @user.update_attributes(edit_params)
          redirect_to user_path(current_user)
        else
          render :edit
        end
    else
      redirect_to user_path(@user)
    end
  end


  private
  def user_params
  params.require(:user).permit(:email,:password,:password_confirmation,:start_day,
                                :username,:department,:image,:introduction,:contact,:post,:number)
  end

  def edit_params
  params.require(:user).permit(:username,:start_day,:department,:image,:introduction,:contact,:post,:number)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
