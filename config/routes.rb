Rails.application.routes.draw do
  
  devise_for :users
  root to: "regisrations#index"
  
  resources :regisrations, only: [:new,:create,:edit,:update]
  resources :users, only:[:show]
  resources :categories ,only: [:show] do
    collection do
      get 'category_1'
      get 'category_2'
      get 'category_3'
    end
  end
resources :items do
    collection do
      get 'search'
    end
  end
end
