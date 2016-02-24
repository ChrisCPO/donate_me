Rails.application.routes.draw do

  root "savings#new"

  resources :savings, only: [:new] do
    collection do
      get "random"
    end
  end
end
