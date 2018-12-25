Rails.application.routes.draw do
  root 'cohorts#index'
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
end
