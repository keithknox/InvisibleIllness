Rails.application.routes.draw do

  devise_for :users
    resources :illnesses
    resources :people


    root 'welcome#index'

end
