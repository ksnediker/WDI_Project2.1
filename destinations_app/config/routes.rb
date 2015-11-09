Rails.application.routes.draw do
  devise_for :users

  resources :destinations do 
    resources :activities
  end

  get '/' => 'destinations#index'

  get '/destinations/:id' => 'destinations#show', as: :destination_show

  post '/activities' => 'activities#create'

  get '/activities/new' => 'activities#new', as: :new_activity

  get '/activities/:id/edit' => 'activities#edit', as: :edit_activity

  get '/activities/:id' => 'activities#show', as: :activity

  patch '/activities/:id' => 'activities#update'

  get    'login'   => 'sessions#new'

  post   'login'   => 'sessions#create'

  delete 'logout'  => 'sessions#destroy'

#              destinations GET    /destinations(.:format)                                     destinations#index
#                           POST   /destinations(.:format)                                     destinations#create
#           new_destination GET    /destinations/new(.:format)                                 destinations#new
#          edit_destination GET    /destinations/:id/edit(.:format)                            destinations#edit
#               destination GET    /destinations/:id(.:format)                                 destinations#show
#                           PATCH  /destinations/:id(.:format)                                 destinations#update
#                           PUT    /destinations/:id(.:format)                                 destinations#update
#                           DELETE /destinations/:id(.:format)                                 destinations#destroy

end

 #  new_user_session GET    /users/sign_in(.:format)                                    devise/sessions#new
 #             user_session POST   /users/sign_in(.:format)                                    devise/sessions#create
 #     destroy_user_session DELETE /users/sign_out(.:format)                                   devise/sessions#destroy
 #            user_password POST   /users/password(.:format)                                   devise/passwords#create
 #        new_user_password GET    /users/password/new(.:format)                               devise/passwords#new
 #       edit_user_password GET    /users/password/edit(.:format)                              devise/passwords#edit
 #                          PATCH  /users/password(.:format)                                   devise/passwords#update
 #                          PUT    /users/password(.:format)                                   devise/passwords#update
 # cancel_user_registration GET    /users/cancel(.:format)                                     devise/registrations#cancel
 #        user_registration POST   /users(.:format)                                            devise/registrations#create
 #    new_user_registration GET    /users/sign_up(.:format)                                    devise/registrations#new
 #   edit_user_registration GET    /users/edit(.:format)                                       devise/registrations#edit
 #                          PATCH  /users(.:format)                                            devise/registrations#update
 #                          PUT    /users(.:format)                                            devise/registrations#update
 #                          DELETE /users(.:format)                                            devise/registrations#destroy

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



