Rails.application.routes.draw do
  root :to => 'sensors#index'

  resources :sensors

  #from https://stackoverflow.com/questions/11477191/how-do-i-run-ruby-code-on-a-button-click
  resources :lcds do
    collection do
      get :lcd_wink
      get :lcd_on
      get :lcd_off
    end
  end
end
