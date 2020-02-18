class UsersController < ApplicationController
  before_action :set_user, only:[:edit,:update,:destroy]
  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:info] = "登録しました"
      redirect_to sureds_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:info] = "変更しました"
      redirect_to new_user_path
    else
      render edit
    end
  end


  def destroy
    @user.delete
    flash[:info] = "削除しました"
    redirect_to new_user_path
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end










end
