Rails.application.routes.draw do

    resources :illnesses
    resources :people


    root 'welcome#index'

end
