Rails.application.routes.draw do

  # root
  root "pages#home"

  # login and out
  get "/login", to: "sessions#login", as: "login"
  post '/login', to: "sessions#login_action", as: "login_action"
  get "/logout", to: "sessions#logout", as: "logout"

  # signup page and action
  get "/signup", to: "users#signup_page", as: "signup_page"
  post "/signup", to: "users#signup", as: "signup"

  # profule edit and update
  get "/edit", to: "profiles#edit", as: "user_profile_edit"
  patch "/edit", to: "profiles#update", as: "user_profile_update"

  # THIS NEEDS TO STAY ON BOTTOM!!! TO ALLOW THE ROUTE SYSTEM TO GO
  # THROUGH THE OTHER SET ROUTES FIRST
  get "/:url_name", to: "profiles#show", as: "user_profile"

end
