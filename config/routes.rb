Rails.application.routes.draw do
  root 'urls#index'
  #this sets urls/index as root page

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :urls
  get "/user/new" => "users#new", as: "signup"
  # create a new route called 'short'
  get '/urls/:id/short' => 'urls#short'
end
