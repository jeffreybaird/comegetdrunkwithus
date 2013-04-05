Rsvp::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  match '/'          => 'home#show'
  match '/home'      => 'home#show'
  match '/about-us'  => 'about_us#show'
  match '/rsvps'     => 'users#show'

  resource :users


   #get '/dashboard/about_your_todo_list', :to => "dashboard#about_todo_list", :as => "about_your_todo_list"
end
