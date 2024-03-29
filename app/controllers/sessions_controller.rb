class SessionsController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]
  skip_before_filter :is_admin

  def new
  end

  def create
    user = User.where(email: params[:session][:email]).first
    if user
      session[:user_id] = user.id
      redirect_to user, :notice => "logged in"
    else
      redirect_to signup_path
      #render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end