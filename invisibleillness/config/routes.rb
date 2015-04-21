Rails.application.routes.draw do

  resources :person

  root 'welcome#index'
end
