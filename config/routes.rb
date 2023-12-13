Rails.application.routes.draw do
  resources :subjects
  get 'home/index'
  get 'session/sign_up'
  post 'session/sign_up' => 'session#create_user'
  get 'session/sign_in'
  post 'session/sign_in' => 'session#create_session'
  get 'session/destroy'
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
end
