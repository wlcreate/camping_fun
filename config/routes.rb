Rails.application.routes.draw do
  # resources :signups
  get '/campers', to: "campers#index", as: "campers" #all campers
  get '/campers/new', to: "campers#new", as: "new_camper" #form to create new camper
  post '/campers', to: "campers#create" #actually creates camper
  get '/campers/:id', to: "campers#show", as: "camper" #specific camper

  get '/activities', to: "activities#index", as: "activities" #all activities
  get '/activities/:id', to: "activities#show", as: "activity" #specific activity

  get '/signups', to: "signups#index", as: "signups" #all the signups -> need this in order to create a signup b/c... rails
  get '/signups/new', to: "signups#new", as: "new_signup" #form for user to signups
  post '/signups', to: "signups#create" #actually completes signup

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
