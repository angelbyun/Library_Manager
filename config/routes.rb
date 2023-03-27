Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/libraries', to: 'libraries#index'
  get '/books', to: 'books#index'
  get '/libraries/:id/books', to: 'libraries/books#index'
  get '/libraries/new', to: 'libraries#new'
  get '/libraries/:id/books/new', to: 'libraries/books#new'
  post '/libraries', to: 'libraries#create'
  post '/libraries/:id/books/new', to: 'libraries/books#create'
  get '/libraries/:id', to: 'libraries#show'
  get '/books/:id', to: 'books#show'
  get '/libraries/:id/edit', to: 'libraries#edit'
  patch '/libraries/:id', to: 'libraries#update'
end
