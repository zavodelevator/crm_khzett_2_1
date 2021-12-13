Rails.application.routes.draw do
  resources :piples
  devise_for :users
  resources :customers do 
    resources :purchases
  end
  # get 'home/index'
  get 'home/about'
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
