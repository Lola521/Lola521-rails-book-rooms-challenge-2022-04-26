Rails.application.routes.draw do
  get 'rooms/index'
  get 'rooms/show'
  devise_for :users
  root to: 'pages#home'
  resources :rooms, only: [:index, :show] do
    resources :booking, only: [:new, :create]
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
