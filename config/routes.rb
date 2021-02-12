Rails.application.routes.draw do
  resources :surgeries
  resources :gs
  resources :rooms
  resources :nurses
  resources :patients
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
