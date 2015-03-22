Rails.application.routes.draw do

  root 'welcome#index'

  resources :libraries, only: [:index, :show]
  resources :books, only: [:index, :new, :create]

end
