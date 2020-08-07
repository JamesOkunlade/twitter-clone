Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  # post 'follow/:user_id', to: 'follows#follow', as: 'follow'
  # delete 'unfollow/:user_id' to: 'follows#unfollow', as: 'unfollow'


  resources :tweeets
  resources :follows, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweeets#index"
end
