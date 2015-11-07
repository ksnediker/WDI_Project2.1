Rails.application.routes.draw do
  devise_for :users

  resources :destinations do 
    resources :activities
  end

  get '/' => 'destinations#index'

  get '/destinations' => 'destinations#index'

  get '/destination/destination_id/:id' => 'destinations#show'

  get 'destinations/:id/activities/:id' => 'activities#show'

end

#    destination_activities GET    /destinations/:destination_id/activities(.:format)          activities#index
#                           POST   /destinations/:destination_id/activities(.:format)          activities#create
#  new_destination_activity GET    /destinations/:destination_id/activities/new(.:format)      activities#new
# edit_destination_activity GET    /destinations/:destination_id/activities/:id/edit(.:format) activities#edit
#      destination_activity GET    /destinations/:destination_id/activities/:id(.:format)      activities#show
#                           PATCH  /destinations/:destination_id/activities/:id(.:format)      activities#update
#                           PUT    /destinations/:destination_id/activities/:id(.:format)      activities#update
#                           DELETE /destinations/:destination_id/activities/:id(.:format)      activities#destroy
#              destinations GET    /destinations(.:format)                                     destinations#index
#                           POST   /destinations(.:format)                                     destinations#create
#           new_destination GET    /destinations/new(.:format)                                 destinations#new
#          edit_destination GET    /destinations/:id/edit(.:format)                            destinations#edit
#               destination GET    /destinations/:id(.:format)                                 destinations#show
#                           PATCH  /destinations/:id(.:format)                                 destinations#update
#                           PUT    /destinations/:id(.:format)                                 destinations#update
#                           DELETE /destinations/:id(.:format)                                 destinations#destroy
#                           GET    /                                                           destinations#index
#                           GET    /destinations(.:format)                                     destinations#index
#                activities GET    /activities(.:format)                                       activities#index
