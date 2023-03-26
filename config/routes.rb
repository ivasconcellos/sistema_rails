Rails.application.routes.draw do
  #Pages
  get 'initial' => 'pages#initial'
  get 'about' => 'pages#about'


  
  devise_for :users
  devise_for :admins, :skip => [:registrations]
  
  #Initial Page
  as :user do
    root :to => "devise/sessions#new"
  end
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
