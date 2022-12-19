Rails.application.routes.draw do
  get "/articles" => "articles#index"
  post "/users" => "users#create"
end
