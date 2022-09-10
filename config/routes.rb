Rails.application.routes.draw do
  resources :body_measurement_keys
  resources :diary_entries
  root "home#index"
end
