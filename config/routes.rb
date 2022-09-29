Rails.application.routes.draw do
  resources :projects
  resources :courses
  #left side is controller name / right side is action name

  root 'welcome#index'

  resources :students


end