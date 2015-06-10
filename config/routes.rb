Rails.application.routes.draw do

  resources :airports, :flights

  resources :bookings, only: [:new, :create]
  root 'flights#index'
end
