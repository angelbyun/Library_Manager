Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/libraries', to: 'libraries#index'
  get '/libraries/new', to: 'libraries#new'
  post '/libraries', to: 'libraries#create'
  get '/libraries/:id', to: 'libraries#show'
  get '/libraries/:id/edit', to: 'libraries#edit'
  patch '/libraries/:id', to: 'libraries#update'
  get '/books', to: 'books#index'
  get '/libraries/:id/books/new', to: 'libraries/books#new'
  post '/libraries/:id/books/new', to: 'libraries/books#create'
  get '/books/:id', to: 'books#show'
  get '/books/:id/edit', to: 'books#edit'
  patch '/books/:id/edit', to: 'books#update'
  get '/libraries/:id/books', to: 'libraries/books#index'
end
