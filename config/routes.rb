Rails.application.routes.draw do
  get "/articles" => "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
