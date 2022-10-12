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

  #points to the admin controller and adds prefix to the routes (admin/students#destroy, /admin/students/:id)
  namespace :admin do
    resources :students
  end

  # doesn't point to the admin controller, but adds previx to the routes (students#destroy, /admin/students/:id)
  # scope :admin do
  #   resources :students
  # end

  
# points to the admin controller, but will remove previx admin from the routes (admin/students#destroy, /students/:id)
  # scope module: :admin do
  #   resources :students
  # end
  


end