Rails.application.routes.draw do
  
  root "top#index"

  resources :assetdebts, only: [:index]
  resources :assets
  resources :debts

  resources :lossprofits, only: [:index]
  resources :incomes
  resources :outcomes
  

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
