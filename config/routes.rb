FindWorkFlow::Application.routes.draw do
  devise_for :users

  resources :users
  resources :companies
  resources :jobs
  root to: "users#index"
end
