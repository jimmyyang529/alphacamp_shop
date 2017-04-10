Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]

  namespace :admin do
    root 'products#index'
    resources :products
  end




  root "products#index"
end
