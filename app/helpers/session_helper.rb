module SessionHelper

  def login_required
    redirect_to signin_path unless authorized?
  end

  def authorize username, password
    # do login logic here... this is super simple for now
    File.open(RAILS_ROOT + "/login.txt", "r") do |f|
      lines = IO.readlines
      auth_user,auth_pass = lines.split(":")
    end
    auth_user == username && auth_pass == password
  end

end
