Rails.application.routes.draw do

  resources :airports, :flights

  resources :bookings, only: [:new, :create, :show]
  root 'flights#index'
end
