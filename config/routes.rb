Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :investments
      resources :businesses
      resources :users

      post 'users/sign_in', to: 'users#sign_in'
      get 'investments/total_investments', to: 'investments#total_investments'
      # get 'users/:id/investments', to: 'user#investments'
      # get '/investments/:id', to: 'user#investments'


    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


