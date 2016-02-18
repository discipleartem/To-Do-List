Rails.application.routes.draw do
  devise_for :users

  root 'items#index'

  resources :items do
    member do
      patch :complete
      patch :uncomplete
    end
  end
end
