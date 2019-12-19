Rails.application.routes.draw do
  
  devise_for :users
  root to: "regisrations#index"
  
  resources :regisrations, only: [:new,:create]
  resources :users, only:[:show]
  resources :categories ,only: [:show]
  resources :items do
      collection do
        get 'search'
      end
  end
end
