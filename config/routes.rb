Rails.application.routes.draw do
  root 'top#index'

  get 'search', to: 'top#search'
  resources :venues, only: %i(index show)

  namespace :admin do
    resources :venues, only: %i(index new create edit update destroy)
  end
end
