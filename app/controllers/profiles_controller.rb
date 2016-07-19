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
      if @profile.update(profile_params)
        redirect_to user_profile_path(@user.url), notice: "Nowpage updated."
      else
        redirect_to user_profile_path(@user.url), notice: "Error! Please only upload images that aren't too big."
      end
    else
      redirect_to login_path, notice: "Please log in."
    end
  end


  private
  def profile_params
    params.require(:profile).permit(:title, :subtitle, :content, :contact_text, :profile_image, :title_delete, :subtitle_delete, :content_delete, 
      :contact_text_delete, :profile_image_delete, :user_id)
  end

end
