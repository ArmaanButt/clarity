Rails.application.routes.draw do


  root 'homepage#index'
  resources :courses do
    collection do
      get 'search'
      get 'user_courses'
      get :autocomplete
    end
  end

 get '/courses/user_courses' => 'courses#user_courses', as: :user_root

 post '/posts' => 'posts#create', as: 'post_create'
 resources :posts


 get '/survey' => 'surveys#show'
get '/surveys/saved'
get '/surveys/nosaved'
 post '/surveys/save' => 'surveys#create'


  post 'enroll/:id' => 'courses#enroll', as: 'course_enroll'
  post 'unenroll/:id' => 'courses#unenroll', as: 'course_unenroll'


  devise_for :users, controllers: { registrations: "registrations" }

  mount Commontator::Engine => '/commontator'

  mount Surveyor::Engine => "/surveys", :as => "surveyor"
  get '/surveys' => 'surveyor#new'

end
