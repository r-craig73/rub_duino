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
      get :rgb_multicolor
      get :rgb_red
      get :rgb_green
      get :rgb_blue
      get :rgb_cyan
      get :rgb_yellow
      get :rgb_magenta
      get :rgb_white
      get :rgb_off
    end
  end
end
