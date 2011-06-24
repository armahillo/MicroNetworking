class SessionController < ApplicationController

skip_before_filter :login_required


  def new
  end

  def create
    logger.info (authorize(params[:username],params[:password]).inspect)
    if authorize(params[:username], params[:password])
      session[:authorized] = true
      flash[:notice] = "Logged in!"
      redirect_to people_path
    else
      flash[:error] = "Invalid login/password combination."
      redirect_to signin_path
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to signin_path
  end





end
