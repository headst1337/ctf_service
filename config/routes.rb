Rails.application.routes.draw do
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root to: 'tasks#index', as: 'home'
  get '/backup', to: 'tasks#backup'
  get '/new', to: 'tasks#new'
  get '/home', to: 'tasks#index'
  resources :tasks
  get '/*paths', to: 'tasks#err'
end
