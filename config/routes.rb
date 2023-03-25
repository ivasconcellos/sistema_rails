Rails.application.routes.draw do
  devise_for :users
  
  #Initial Page
  as :user do
    root :to => "devise/sessions#new"
  end

end
