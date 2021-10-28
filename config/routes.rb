Rails.application.routes.draw do
  get 'pages/home'
  resources :clients
  resources :employees
  resources :people
  resources :roles
  resources :projects
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
