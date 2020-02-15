class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email:params[:email])
    if user && user.authenticate(params[:password])
      flash[:success] = "ログインしました"
      log_in user
      params[:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to new_user_path
    else
      flash.now[:danger] = "どちらかが正しくありません"
     render "new"
    end
  end

  def destroy
    log_out if logged_in?
    flash[:warning] = "ログアウトしました"
    redirect_to new_user_path
  end

end
