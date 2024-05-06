Rails.application.routes.draw do
  resources :todos
  resources :locations
  resource :registration
  resource :session
  resource :password_reset
  resources :password


  resources :todos, only: [:index, :create]
  get '/todos', to: 'todos#task'


  get "up" => "rails/health#show", as: :rails_health_check


  get "sign_up", to: "registrations#new"
  root "todos#index"
end
