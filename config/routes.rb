Rails.application.routes.draw do
  devise_for :users
  root 'chapters#index'

  resources :chapters, :notes, :users, :searches do
    get 'search', on: :collection
  end
  
  # get '/notes', to: 'notes

  #index', as: 'notes_index'
  # get '/notes/new', to: 'notes#new', as: 'notes_new'
  # post '/notes', to: 'notes#create', as: 'notes'
  # get '/notes/:id', to: 'notes#show', as: 'note'
end

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              chapters#index
#                 chapters GET    /chapters(.:format)            chapters#index
#                          POST   /chapters(.:format)            chapters#create
#              new_chapter GET    /chapters/new(.:format)        chapters#new
#             edit_chapter GET    /chapters/:id/edit(.:format)   chapters#edit
#                  chapter GET    /chapters/:id(.:format)        chapters#show
#                          PATCH  /chapters/:id(.:format)        chapters#update
#                          PUT    /chapters/:id(.:format)        chapters#update
#                          DELETE /chapters/:id(.:format)        chapters#destroy
#                    notes GET    /notes(.:format)               notes#index
#                          POST   /notes(.:format)               notes#create
#                 new_note GET    /notes/new(.:format)           notes#new
#                edit_note GET    /notes/:id/edit(.:format)      notes#edit
#                     note GET    /notes/:id(.:format)           notes#show
#                          PATCH  /notes/:id(.:format)           notes#update
#                          PUT    /notes/:id(.:format)           notes#update
#                          DELETE /notes/:id(.:format)           notes#destroy
#                    users GET    /users(.:format)               users#index
#                          POST   /users(.:format)               users#create
#                 new_user GET    /users/new(.:format)           users#new
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                     user GET    /users/:id(.:format)           users#show
#                          PATCH  /users/:id(.:format)           users#update
#                          PUT    /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
# Henrys-MacBook-Air:notes henryhuang$ rake routes 
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              chapters#index
#                 chapters GET    /chapters(.:format)            chapters#index
#                          POST   /chapters(.:format)            chapters#create
#              new_chapter GET    /chapters/new(.:format)        chapters#new
#             edit_chapter GET    /chapters/:id/edit(.:format)   chapters#edit
#                  chapter GET    /chapters/:id(.:format)        chapters#show
#                          PATCH  /chapters/:id(.:format)        chapters#update
#                          PUT    /chapters/:id(.:format)        chapters#update
#                          DELETE /chapters/:id(.:format)        chapters#destroy
#                    notes GET    /notes(.:format)               notes#index
#                          POST   /notes(.:format)               notes#create
#                 new_note GET    /notes/new(.:format)           notes#new
#                edit_note GET    /notes/:id/edit(.:format)      notes#edit
#                     note GET    /notes/:id(.:format)           notes#show
#                          PATCH  /notes/:id(.:format)           notes#update
#                          PUT    /notes/:id(.:format)           notes#update
#                          DELETE /notes/:id(.:format)           notes#destroy
#                    users GET    /users(.:format)               users#index
#                          POST   /users(.:format)               users#create
#                 new_user GET    /users/new(.:format)           users#new
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                     user GET    /users/:id(.:format)           users#show
#                          PATCH  /users/:id(.:format)           users#update
#                          PUT    /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
#                 searches GET    /searches(.:format)            searches#index
#                          POST   /searches(.:format)            searches#create
#               new_search GET    /searches/new(.:format)        searches#new
#              edit_search GET    /searches/:id/edit(.:format)   searches#edit
#                   search GET    /searches/:id(.:format)        searches#show
#                          PATCH  /searches/:id(.:format)        searches#update
#                          PUT    /searches/:id(.:format)        searches#update
#                          DELETE /searches/:id(.:format)        searches#destroy