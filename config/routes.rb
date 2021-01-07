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

    get "/setlists" => "setlists#index"
    post "/setlists" => "setlists#create"
    get "/setlists/:id" => "setlists#show"
    patch "/setlists/:id" => "setlists#update"
    delete "/setlists/:id" => "setlists#destroy"

    post "/setlist_songs" => "setlist_songs#create"
    delete "/setlist_songs/" => "setlist_songs#destroy"

    get "/tags" => "tags#index"
    get "/tags/:id" => "tags#show"
    patch "/tags/:id" => "tags#update"
    delete "/tags/:id" => "tags#destroy"

    post "/song_tags" => "song_tags#create"
    delete "/song_tags/:id" => "song_tags#destroy"
  end
end
