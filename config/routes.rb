Rails.application.routes.draw do

  root "savings#new"

  resources :savings, only: [:new]
end
