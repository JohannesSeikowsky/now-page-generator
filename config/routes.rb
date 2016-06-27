Rails.application.routes.draw do

  # root
  root "pages#home"

  # login and out
  get "/login", to: "session#login", as: "login"
  get "/logout", to: "session#logout", as: "logout"

  # signup page and action
  get "/signup", to: "users#signup_page", as: "signup_page"
  post "/signup", to: "users#signup", as: "signup"

  # profile show
  get "/:url_name", to: "profiles#show", as: "user_profile"

  # profile edit page and action
  get "/make_your_nowpage_great_again", to: "profiles#edit", as: "user_profile_edit"
  put "/update", to: "profiles#update", as: "user_profile_update"

end
