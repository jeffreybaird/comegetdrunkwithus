Rsvp::Application.routes.draw do
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
