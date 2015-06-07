Rails.application.routes.draw do

  resources :airports, :flights

  root 'flights#index'
end
