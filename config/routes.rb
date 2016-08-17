Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/recipes', to: 'recipes#index'
  get '/recipes/:id', to: 'recipes#show'
  post '/recipes/search', to: 'recipes#search'

  delete '/cabinets/:id', to: 'cabinets#destroy'
  get '/cabinets', to: 'cabinets#new', as: 'new_cabinet'
  post '/cabinets', to: 'cabinets#create'
end
