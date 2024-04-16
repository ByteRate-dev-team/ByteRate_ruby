Rails.application.routes.draw do
  root 'restaurants#index' # when website is first accessed, display restaurant page
  
  resources :restaurants
end
