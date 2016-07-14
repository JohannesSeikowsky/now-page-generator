class SessionsController < ApplicationController
  
  def login
  end

  def login_action
    @user = User.find_by_email(params[:login][:email_provided])
    if @user && @user.check_password(params[:login][:password_provided])
      session[:user_id] = @user.id
      redirect_to user_profile_edit_path, notice: "You are logged in."
    else
      redirect_to login_path, notice: "Invalid attempt. Try again."
    end
  end

  def logout
    # literally means destroying cookie implemented log in.
  end

end
