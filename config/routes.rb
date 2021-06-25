Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :folders do
   resources :second_folders do
    resources :third_folders
    resources :third_sheets
   end
   resources :second_sheets
   
  end
  
  resources :sheets
   
  
  resources :links
  
  root 'folders#index'
end
