ActionController::Routing::Routes.draw do |map|
  
  map.resources :posts, :only => [:new]
  
  map.root :controller => "clearance/sessions", :action => "new"

  # rake routes
  # http://guides.rubyonrails.org/routing.html
end
