Rails.application.routes.draw do
  get 'bookings/index'

  get 'bookings/show'

  get 'lockers/index'

  get 'lockers/show'

  devise_for :users
  resources :majors
  resources :lockers
  resources :bookings
  root to: 'majors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
