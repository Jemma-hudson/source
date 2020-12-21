Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'
  get "about" , to: "pages#about"
  resources :users
  resource :session
end
