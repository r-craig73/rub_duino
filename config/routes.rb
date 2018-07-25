# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'sensors#index'

  resources :sensors
  resources :lcds do
    collection do
      get :lcd_wink
      get :lcd_on
      get :lcd_off
      get :rgb_multicolor
    end
  end

  resources :rgblcds do
    collection do
      # get :rgb_multicolor
    end
  end
end
