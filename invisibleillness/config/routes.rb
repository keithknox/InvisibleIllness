Rails.application.routes.draw do

    resources :illnesses do
      resources :people
    end

    root 'welcome#index'

end
