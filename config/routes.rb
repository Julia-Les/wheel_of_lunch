Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  resources :matches
  resources :iterations
  resources :annkissamers

  root :to => "iterations#show", :id => Iteration.last.id
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
