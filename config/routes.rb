Rails.application.routes.draw do
  get 'homepage/index'

  root 'homepage#index'

  # OAuth stuff
  get '/auth/:provider'          => 'omniauth#auth', as: :auth
  get '/auth/:provider/callback' => 'session#create'
  get '/auth/failure'            => 'session#failure'

  # Aliasing session stuff
  get '/login'  => 'session#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :categories
  resources :terms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
