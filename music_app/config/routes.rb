Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bands
  resources :albums, except: [:index]
  resources :users, only: [:create, :new, :index, :show]
  
  resource :session, only: [:create, :new, :destroy]
end
