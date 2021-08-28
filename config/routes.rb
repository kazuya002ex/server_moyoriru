Rails.application.routes.draw do
  root 'top#index'

  resources :venues

  namespace :admin do
    resources :venues, only: %i(new edit update destroy)
  end
end
