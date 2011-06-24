class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_required

 def login_required
    redirect_to signin_path unless authorized?
  end

  def authorize username, password
    # do login logic here... this is super simple for now
      auth_user, auth_pass = ''
      File.open(RAILS_ROOT + "/login.txt", "r") do |f|
        lines = f.read
        auth_user,auth_pass = lines.chomp.split(":")
      end
      return auth_user == username && auth_pass == password
  end

  def authorized?
    return session[:authorized]
  end
  
end
