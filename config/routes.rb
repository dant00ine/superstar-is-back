require 'api_constraints'

Rails.application.routes.draw do

  # devise_for :users

  root 'application#index'

  post '/sessions',to: 'api/v1/sessions#create'

    # Api definition
    namespace :api, path: '/'  do
        scope module: :v1,
                constraints: ApiConstraints.new(version: 1, default: true) do
                    resources :users, only: [:show, :create, :update, :destroy]
                    resources :sessions, only: [:create, :destroy]
        end
    end

end
