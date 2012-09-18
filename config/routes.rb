PusherExample::Application.routes.draw do

  resources :home do
    collection do
      get 'auth'
      get 'auth_get'
    end
  end

  resources :pusher do
    collection do
      post 'auth'
    end
  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"

  devise_for :users

  resources :users, :only => [:show, :index]
end
