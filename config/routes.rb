Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :courts do
    resources :events do
      resources :event_users
    end
  end

  resources :dashboards, only: [:show, :edit, :update]

  get '/:username', to: 'pages#profile', as: 'profile'
end
