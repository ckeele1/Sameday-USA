ActionController::Routing::Routes.draw do |map|
  map.resources :places, :collection => { :create_or_update => :post, :index_details => :get }
  map.resources :categories, :collection => { :sort => :post, :sort_categories => :get }
	map.resources :buildings

	map.root :controller => 'pages', :action => 'index'

  map.resource :user_session
  map.resources :users

	# FQ.com feeds
	map.connect "/places.:format", :controller => :places, :action => :index
	map.connect "/categories.:format", :controller => :categories, :action => :index
  

	map.connect 'login', :controller => "user_sessions", :action => "new"
	map.connect 'logout', :controller => "user_sessions", :action => "destroy"
	map.connect 'deny', :controller => "user_sessions", :action => "deny"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
