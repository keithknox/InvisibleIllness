Rails.application.routes.draw do

  devise_for :users
  resources :illnesses
  resources :people

  get '/admin', to: 'people#admin'


  root 'welcome#index'

end
