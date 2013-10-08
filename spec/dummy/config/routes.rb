Dummy::Application.routes.draw do
  mount LocalHoney::Engine, at: ""

  devise_for :users

  get '/private/route' => 'home#private', as: :private
  get '/example/route' => 'home#index', as: :example_private_route

  get '/public/route' => 'home#index', as: :example_route

  root to: 'home#index'
end
