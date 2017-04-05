Rails.application.routes.draw do
  resources :restaurants
  get 'pages/home'

  resources :restaurants  do
    resources :reviews, only: [:create]
  end

  root "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
