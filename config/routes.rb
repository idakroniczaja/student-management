Rails.application.routes.draw do
  resources :projects
  resources :courses
  resources :blogs
  #left side is controller name / right side is action name

  root 'welcome#index'

  get '/students/tests', to: 'students#tests'

  resources :students do 
    member do
      get :personal_details
    end

    collection do 
      get :active
    end

    # this is when you need only one member action
    # get :personal_details, on: :member
  end


  get '/test', to: 'tests#what'

  get '/about', to: 'welcome#about'


end