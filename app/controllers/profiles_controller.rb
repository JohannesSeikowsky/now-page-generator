class ProfilesController < ApplicationController

  def show
    @user = User.find_by_url(params[:url_name])
  end

  def edit
    @user = User.find(params[:id])
    @profile = @user.profile
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      render :edit 
    end
  end
  

  private
  def profile_params
    params.require(:profile).permit(:profile_name, :content, :user_id)
  end

end
