Rails.application.routes.draw do

  root 'homepage#index'
  resources :courses
  get 'courses/index'

  get 'courses/show'

  mount Commontator::Engine => '/commontator'

  devise_for :users

end
