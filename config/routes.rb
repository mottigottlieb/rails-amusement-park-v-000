Rails.application.routes.draw do
 	root to: 'static#home'
 	
 	get '/signin', to: 'sessions#sign_in'
 	
 	post '/signin', to: 'sessions#create'

 	get '/logout', to: 'sessions#destroy'
	resources :users
end