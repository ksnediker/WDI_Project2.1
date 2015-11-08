Rails.application.routes.draw do
  devise_for :users

  resources :destinations do 
    resources :activities
  end

  get '/' => 'destinations#index'

  get '/destinations/:id' => 'destinations#show', as: :destination_show

  get '/activities/:id' => 'activities#show', as: :activity

  get '/activities/:id/edit' => 'activities#edit', as: :edit_activity

  patch '/activities/:id' => 'activities#update'

  post '/activities' => 'activities#create', as: :create_activity

  get '/activities/new' => 'activities#new', as: :new_activity

  get    'login'   => 'sessions#new'

  post   'login'   => 'sessions#create'

  delete 'logout'  => 'sessions#destroy'

end

#                           GET    /                                                           destinations#index
#          destination_show GET    /destinations/:id(.:format)                                 destinations#show
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
#                  activity GET    /activities/:id(.:format)                                   activities#show
#             edit_activity GET    /activities/:id/edit(.:format)                              activities#edit
#                           PATCH  /activities/:id(.:format)                                   activities#update
#           create_activity POST   /activities(.:format)                                       activities#create
#              new_activity GET    /activities/new(.:format)                                   activities#new



