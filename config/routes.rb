Rails.application.routes.draw do

  root 'sessions#login'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
end
