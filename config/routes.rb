Rails.application.routes.draw do
  namespace :api do
    get '/cymbals/' => 'cymbals#index'
    post '/cymbals' => 'cymbals#create'
    get '/cymbals/:id' => 'cymbals#show'
    patch '/cymbals/:id' => 'cymbals#update'
    delete '/cymbals/:id' => 'cymbals#destroy'
  end
end
