Rails.application.routes.draw do
  resources :body_measurement_keys, except: :show
  resources :diary_entries, except: :show
  root "home#index"
end
