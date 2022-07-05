Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'
  # /listing/:id -- listings/new
  resources :listings do
    # POST   /listings/:listing_id/bookings
    resources :bookings, only: [:create]
  end

  # /bookings --  /bookings/:id
  resources :bookings, only: [:index, :show, :destroy] do
    # POST   bookings/:booking_id/review
    resources :reviews, only: [:create]
  end
end
