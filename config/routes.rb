Rails.application.routes.draw do
  root 'top#index'

  resources :venues, only: %i(index show)
  get 'search', to: 'venues#search'

  namespace :admin do
    resources :venues, only: %i(index new create edit update destroy)
  end
end
