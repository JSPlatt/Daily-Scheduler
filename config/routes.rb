Rails.application.routes.draw do
  resources :surgeries
  resources :rooms
  resources :nurses
  resources :patients
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# get '/surgeries', to: "surgeries#index", as: "surgeries"
# get '/surgeries/new', to: "surgeries#new", as: "new_surgery"
# post '/surgeries', to: "surgeries#create"
# get '/surgeries/:id', to: "surgeries#show", as: "surgery"
# get '/surgeries/:id/edit', to: "surgeries#edit", as: "edit_surgery"
#patch '/surgeries/:id', to: "surgeries#update"
# delete '/surgeries/:id', to: "surgeries#destroy"

end
