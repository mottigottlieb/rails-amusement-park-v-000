Rails.application.routes.draw do
 	root to: 'static#home'
 	get '/signin', to: 'users/#sign_in'
 	post '/signin', to: 'users/#sign_in'
	resources :users
end