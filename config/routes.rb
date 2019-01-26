Rails.application.routes.draw do
  
  root "top#index"

  resources :assetdebts, only: [:index]
  resources :assets, only: [:index,:new,:create,:show]
  resources :debts, only: [:index,:new,:create,:show]

  resources :lossprofits, only: [:index]
  resources :incomes, only: [:index,:new,:create,:show]
  resources :outcomes, only: [:index,:new,:create,:show]

  

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
