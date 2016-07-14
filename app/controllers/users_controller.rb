class UsersController < ApplicationController
  
  def signup_page
    @user = User.new
    render "signup"
  end

  def signup
    @user = User.new(user_params)
    if @user.save
      # setting the default profile eher upon creation.
      @user.build_profile(content: "This worked well.").save
      redirect_to user_profile_path(url_name: @user.url)
    else
      render "signup"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_provided, :url)
  end

end
