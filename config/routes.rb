Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # /listing/:id -- listings/new
  resources :listings do
    # POST   /listings/:listing_id/bookings
    resources :bookings, only: [:create]
  end

  # /bookings
  resources :bookings, only: [:index, :show, :destroy]
end
