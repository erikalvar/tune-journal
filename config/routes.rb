Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/songs" => "songs#index"
    post "/songs" => "songs#create"
    get "/songs/:id" => "songs#show"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"
  end
end
