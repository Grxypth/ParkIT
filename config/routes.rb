Rails.application.routes.draw do
  namespace :api do
    resources :parkinglots
  end
end
