Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }

  authenticated :user do
    root 'pages#home', as: :authenticated_root
  end

  root 'pages#landing'

  resources :users, only: [:index, :show, :destroy]

  resources :pages, only: [:landing, :home]

  resources :issues, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :updates, only: [:new, :create, :edit, :update]
  end


  resources :announcements, only: [:new, :create, :edit, :update]

end
