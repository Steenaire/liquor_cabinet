Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/cabinet', to: 'users#cabinet'
  get '/users/:id/recipes', to: 'users#recipes'
  get '/users/:id/timeline', to: 'users#timeline'

  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  post '/recipes', to: 'recipes#create'
  get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  post '/recipes/search', to: 'recipes#search'
  delete '/recipes/:id', to: 'recipes#destroy'

  delete '/cabinets/:id', to: 'cabinets#destroy'
  get '/cabinets', to: 'cabinets#new', as: 'new_cabinet'
  post '/cabinets', to: 'cabinets#create'

  get '/', to: 'pages#welcome'

  post '/ratings', to: 'ratings#create'

  get '/ingredients/new', to: 'ingredients#new'
  post '/ingredients', to: 'ingredients#create'
  get '/ingredients', to: 'ingredients#index'

  post '/timeline_drinks', to: 'timeline_drinks#create'
  delete '/timeline_drinks/:id', to: 'timeline_drinks#destroy'

  namespace :api do
    namespace :v1 do
      get '/recipes', to: 'recipes#index'
      get '/recipes/:id', to: 'recipes#show'
      get '/ingredients', to: 'ingredients#index'
      get '/ingredients/:id', to: 'ingredients#show'
    end
  end

end
