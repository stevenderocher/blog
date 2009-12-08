ActionController::Routing::Routes.draw do |map|
  
  map.resources :posts, :only => [:index, :new, :create, :show], :has_many => :comments
  map.resources :comments
    
  map.root :controller => "clearance/sessions", :action => "new"

  # rake routes
  # http://guides.rubyonrails.org/routing.html
end
