class ProfilesController < ApplicationController

  def show
    @user = User.find_by_url(params[:url_name])
    @profile = @user.profile
    @title = @profile.title
    @subtitle = @profile.subtitle
    @content = @profile.content
    @contact_text = @profile.contact_text
  end

  def edit
    if session[:user_id]
      @user = User.find(session[:user_id])
      @profile = @user.profile
      render 'edit'
    else
      redirect_to login_path, notice: "Please log in."
    end
    #@user = User.find(params[:id])
    #@profile = @user.profile
  end

  def update
    if user_logged_in?
      @user = User.find(session[:user_id])
      @profile = @user.profile
      @profile.update(profile_params)
      redirect_to user_profile_path(@user.url), notice: "Layout updated."
    else
      redirect_to login_path, notice: "Please log in."
    end
  end


  private
  def profile_params
    params.require(:profile).permit(:title, :subtitle, :content, :contact_text, :user_id)
  end

end
