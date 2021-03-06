Rails.application.routes.draw do
  resources :blogs
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions", registrations: "admins/registrations"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  resources :blogs
  resources :bootstrsp
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  get 'admins/sessions/new', to: 'admins#new'
end
