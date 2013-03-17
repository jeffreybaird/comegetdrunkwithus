Rsvp::Application.routes.draw do
  #
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  match '/'         => 'home#show'
  match '/user'     => 'user#show'
  match '/home'     => 'home#show'
  match '/about-us' => 'about_us#show'
  match '/rsvp'     => 'rsvp#show'

  get '/user', :to     => 'user#show', :as => 'user_path'
  get '/home', :to     => 'home#show', :as => 'home_path'
  get '/about-us', :to => 'about_us#show', :as => 'about_us_path'
  get '/rsvp', :to     => 'rsvp#show', :as => 'rsvp_path'

   #get '/dashboard/about_your_todo_list', :to => "dashboard#about_todo_list", :as => "about_your_todo_list"
end
