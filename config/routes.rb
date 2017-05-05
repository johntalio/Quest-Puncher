Rails.application.routes.draw do
  root 'static#index'
  get '/contacts' => 'contacts#new'
  post '/contacts' => 'contacts#create'
end
