Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :courts, only: [:index, :show, :new, :create] do
    resources :events do
      resources :event_users, only: [:new, :create, :destroy]
    end
  end

  resources :dashboards, only: [:show, :edit, :update]

  get '/profile/:username', to: 'pages#profile', as: 'profile'

  resources :chats, only: [:index, :show, :create] do
     resources :messages, only: [:index, :create]
  end

  mount ActionCable.server => '/cable'
end
