Rails.application.routes.draw do
  root 'dishes#index' # when website is first accessed, display dishes page
  get "/dishes", to: "dishes#index" # when website/dishes is accessed display dishes page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
