Rails.application.routes.draw do
  get '/' => 'snakes#index'
  get '/snakes' => 'snakes#index'

  get '/snakes/new' => 'snakes#new'
  post '/snakes' => 'snakes#create'

  get '/snakes/:id' => 'snakes#show'

  get '/snakeds/:id/edit' => 'snakes#edit'
  patch '/snakes/:id' => 'snakes#update'
  
  delete '/snakes/:id' => 'snakes#destroy'
end
