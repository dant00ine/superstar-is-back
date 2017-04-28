require 'api_constraints'

Rails.application.routes.draw do

  devise_for :users

  root 'application#index'
 # post '/sessions',to: 'api/v1/sessions#create'

    # Api definition
    namespace :api, path: '/'  do
        # constraints: ApiConstraints.new(version: 1, default: true)
        scope module: :v1 do
                    resources :users, only: [:show, :create, :update, :destroy]
                    resources :teams, only: [:show, :index, :create, :update, :destroy]
                    resources :matches, only: [:show, :index, :create, :update, :destroy]
                    resources :sessions, only: [:create, :destroy]
                    get 'sessions/verify', to: 'sessions#verify'
                    get 'users/:id/matches', to: 'users#show_matches'
                    get 'teams/:id/matches', to: 'teams#show_matches'
                    get 'teams/:id/opponents', to: 'teams#show_opponents'
        end
    end

end
