Rails.application.routes.draw do
  root :to => 'sensors#index'

  resources :sensors
  # resources :measures


end
