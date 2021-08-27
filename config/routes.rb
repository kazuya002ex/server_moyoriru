Rails.application.routes.draw do
  root 'top#index'

  resources :venues, only: %i(show)
end
