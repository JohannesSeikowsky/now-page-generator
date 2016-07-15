class PagesController < ApplicationController
  def home
    if user_logged_in?
      @user = User.find(session[:user_id])
    end
  end
end
