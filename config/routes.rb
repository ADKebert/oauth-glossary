Rails.application.routes.draw do
  get 'homepage/index'

  root 'homepage#index'

  # OAuth stuff
  get '/auth/:provider'          => 'omniauth#auth', as: :auth
  get '/auth/:provider/callback' => 'session#create'
  get '/auth/failure'            => 'session#failure'

  # Aliasing session stuff
  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  resources :categories
  resources :terms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
