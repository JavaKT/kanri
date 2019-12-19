Rails.application.routes.draw do
  
  devise_for :users
  root to: "regisrations#index"
  
  resources :regisrations, only: [:new,:create,:edit,:update]
  resources :users, only:[:show]
  resources :categories ,only: [:show]
  resources :items do
      collection do
        get 'search'
      end
  end
end
