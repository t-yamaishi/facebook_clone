Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end
  root 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
