Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :states, only: [:index, :show] do
        resources :state_days, only: [:index, :create]
        resources :counties, only: [:index]
      end
      resources :counties, only: [:index, :show]
    end
  end
  
end
