class ProfilesController < ApplicationController

  def show
    @user = User.find_by_url(params[:url_name])
  end

  def edit
    if session[:user_id] # only allow access when there is a session implemented. AND only find relevant user by data in a session.
      render 'edit' #@user = User.find(session[:user_id])
    else
      redirect_to login_path, notice: "Please log in."
    end
    #@user = User.find(params[:id])
    #@profile = @user.profile
  end

  def update
    if session[:user_id]
      # do the updating. @user = User.find(session[:user_id])
    else
      redirect_to login_path, notice: "Please log in."
    end
  end
  

  private
  def profile_params
    params.require(:profile).permit(:profile_name, :content, :user_id)
  end

end
