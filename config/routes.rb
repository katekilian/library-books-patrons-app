Rails.application.routes.draw do

  root 'welcome#index'

  resources :libraries, only: [:show]
  resources :books, only: [:new, :create]

end
