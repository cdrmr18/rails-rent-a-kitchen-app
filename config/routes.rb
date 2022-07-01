Rails.application.routes.draw do
  get 'reviews/create'
  devise_for :users
  root to: 'pages#home'
  # /listing/:id -- listings/new
  resources :listings do
    # POST   /listings/:listing_id/bookings
    resources :bookings, only: [:create]
     # POST   /listings/:listing_id/review
    resources :reviews, only: [:create]
  end

  # /bookings --  /bookings/:id
  resources :bookings, only: [:index, :show, :destroy]
  resources :reviews, only: [:destroy]
end
