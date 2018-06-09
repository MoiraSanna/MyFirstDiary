Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :entries
  authenticated :user do
  	root "entries#index", as: "authenticated_root"
  end	

  root 'welcome#index'
end
