Rails.application.routes.draw do
  get 'titles/index'
  get 'start/index'

  #indexで競合するため、直接指定する。
  get 'comics', to: 'comics#index'
  get 'titles', to: 'titles#index'

  resources :comics do
    
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'start#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
