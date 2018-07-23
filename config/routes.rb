Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :listings
  resources :users, only: [:show]
  resources :photos, only: [:create, :destroy] do
    collection do 
      get :link
    end
  end
  
  resources :listings do
    resources :reservations, only: [:create]
  end

  root to: 'pages#index'

  get '/setdate' => 'reservations#setdate'
  get '/duplicate' => 'reservations#duplicate'

  get 'manage-listing/:id/basics',      to: 'listings#basics',      as: 'manage_listing_basics'
  get 'manage-listing/:id/description', to: 'listings#description', as: 'manage_listing_description'
  get 'manage-listing/:id/address',     to: 'listings#address',     as: 'manage_listing_address'
  get 'manage-listing/:id/price',       to: 'listings#price',       as: 'manage_listing_price'
  get 'manage-listing/:id/photos',      to: 'listings#photos',      as: 'manage_listing_photos'
  get 'manage-listing/:id/calendar',    to: 'listings#calendar',    as: 'manage_listing_calendar'
  get 'manage-listing/:id/bankaccount', to: 'listings#bankaccount', as: 'manage_listing_bankaccount'
  get 'manage-listing/:id/publish',     to: 'listings#publish',     as: 'manage_listing_publish'
end
