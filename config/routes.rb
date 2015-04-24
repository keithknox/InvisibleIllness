Rails.application.routes.draw do

  root 'welcome#index'

  get '/admin', to: 'people#admin'

  get '/people/user_submitted', to: 'people#user_submitted'

  get '/people/video', to: 'people#video'

  devise_for :users
  resources :illnesses
  resources :people



end
