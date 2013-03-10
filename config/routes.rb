DoroboWeb::Application.routes.draw do

  use_doorkeeper
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end


  get "home/index"

  root :to => 'home#index'

end
