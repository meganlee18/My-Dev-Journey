Rails.application.routes.draw do
  get "/events/new", to: "events#new"
  post "/events", to: "events#create"
  get "/events", to: "events#index"
  # get "/events/:id", to: "events#"
  delete "/events/:id", to: "events#destroy"
  delete "/api/events/:id", to: "events#api_destroy"
  get "/events/:id/edit", to: "events#edit"
  put "/events/:id/edit", to: "events#update"

  get "/", to: "pages#home"
  get "/about", to: "pages#about_us"
  get "/profile", to: "pages#profile"
  post "/profile", to: "pages#create"
  get "/profile/:id", to: "pages#profile"
  get "/profile/:id/edit", to: "pages#edit"
  put "/profile/:id", to: "pages#update"

  get "/login", to: "session#new"

  get "/signup", to: "session#signup"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
  post "/signupdetails", to: "session#signupdetails"
end
