Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  #Initial Page
  as :user do
    root :to => "devise/sessions#new"
  end

end
