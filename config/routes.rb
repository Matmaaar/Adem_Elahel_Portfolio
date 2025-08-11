Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/resume", to: "pages#resume", as: :resume
  get "/work", to: "pages#work", as: :work
  get "/rnd_motion", to: "pages#rnd_motion", as: :rnd_motion
  get "/rnd_stills", to: "pages#rnd_stills", as: :rnd_stills
  get "/news", to: "pages#news", as: :news
end
