Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :folders
  resources :sheets
  resources :links
  resources :second_folders
  resources :socond_sheets
  root 'folders#index'
end
