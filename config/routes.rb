Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/libraries', to: 'libraries#index'
  get '/books', to: 'books#index'
  get '/libraries/new', to: 'libraries#new'
  get '/libraries/:id', to: 'libraries#show'
  get '/books/:id', to: 'books#show'
  get '/libraries/:id/books', to: 'libraries/books#index'
  post '/libraries', to: 'libraries#create'
end
