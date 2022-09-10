Rails.application.routes.draw do
  resources :diary_entries
  root "home#index"
end
