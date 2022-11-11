Rails.application.routes.draw do
  get "/usersignedin", to: "users#show"
  post "/signup", to: "users#create"
  
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  
  get "/model_list", to: "lamborghinis#index"
  post "/model_list", to: "lamborghinis#create"
  get "/model_list/:id", to: "lamborghinis#show"

  get "/my_activity", to: "users#display_user_associated_lamborghinis"

  post "model_list/:id", to: "comments#create"
  patch "model_list/:id/:comment_id", to: "comments#update"
  delete "model_list/:id/:comment_id", to: "comments#destroy"

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end