require 'api_constraints'

Rails.application.routes.draw do

  devise_for :users
    root 'sessions#index'

    # Api definition
    namespace :api, defaults: { format: :json },
                             constraints: { subdomain: 'api' }, path: '/'  do
        scope module: :v1,
                constraints: ApiConstraints.new(version: 1, default: true) do
        end
    end

end
