Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :rsvps
    end
  end

  root 'guests#new'
  # get '*path' => 'application#index'

end
