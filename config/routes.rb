Rails.application.routes.draw do

  root "pages#home"

  get "/signup", to: "users#signup", as: "signup"

 
end
