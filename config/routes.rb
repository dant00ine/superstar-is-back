Rails.application.routes.draw do

    root 'sessions#index'

    resources :players

end
