DoroboWeb::Application.routes.draw do

  use_doorkeeper
  devise_for :users


  # API definitions
  namespace :api do
    namespace :v1 do
      resources :users, only: [ :new, :show, :edit, :destroy ]
    end
  end


  get "home/index"

  root :to => 'home#index'

end
