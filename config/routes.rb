PusherExample::Application.routes.draw do

  resources :home do
    collection do
      get 'auth'
      get 'auth_get'
      get 'main'
    end
  end

  resources :pusher do
    collection do
      post 'auth'
    end
  end

  authenticated :user do
    root :to => 'home#main'
  end

  root :to => "home#main"

  devise_for :users

  resources :users, :only => [:show, :index]
end
