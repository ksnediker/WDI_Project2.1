Rails.application.routes.draw do
  devise_for :users

  get '/' => 'home#index'

  get '/destinations' => 'destinations#index'
  
end
