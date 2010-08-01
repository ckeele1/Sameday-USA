ActionController::Routing::Routes.draw do |map|
  map.resources :parishes

  map.resources :states

  map.resources :alliance_members

  map.resources :groups_tables

  map.resources :groups

  map.resources :date_breaks_itineraries

  map.resources :events_itineraries

  map.resources :hours_events

  map.resources :numbers_places

  map.resources :emails_places

  map.resources :coupons_places

  map.resources :emails_events

  map.resources :coupons_events

  map.resources :hours_places

  map.resources :itineraries

  map.resources :events

  map.resources :hours

  map.resources :places_websites

  map.resources :events_websites

  map.resources :events_numbers

  map.resources :places_numbers

  map.resources :places_emails

  map.resources :events_emails

  map.resources :events_hours

  map.resources :places_hours

  map.resources :places_hours

  map.resources :places_coupons

  map.resources :events_coupons

  map.resources :itineraries_date_breaks

  map.resources :date_breaks

  map.resources :itineraries_events

  map.resources :itineraries_places

  map.resources :events_properties

  map.resources :itineraries_segments

  map.resources :itineraries_objects

  map.resources :itineraries

  map.resources :hours

  map.resources :events_properties

  map.resources :places_properties

  map.resources :devices

  map.resources :coupons

  map.resources :numbers

  map.resources :websites

  map.resources :emails

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
