Rails.application.routes.draw do


  root 'flights#index'

  resources :bookings, only: [:new, :create, :show]

#  get 'flights' => 'flights#index'

end
