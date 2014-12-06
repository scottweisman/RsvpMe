Rails.application.routes.draw do

  resources :rsvps

  root 'rsvps#new'

end
