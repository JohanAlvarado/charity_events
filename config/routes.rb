CharityEvents::Application.routes.draw do
  root 'events#index'
  devise_for :admins, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  resources :events
  namespace :admin do
    resources :events
  end
end
