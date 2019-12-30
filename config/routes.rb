Rails.application.routes.draw do
  
  devise_for :users
  root to: "regisrations#index"
  
  resources :regisrations, only: [:new,:create,:edit,:update]
  resources :users, only:[:show] do
    member do
      get 'search_items'
    end
  end
  resources :categories ,only: [:show] do
    collection do
      get 'category_1'
      get 'category_2'
      get 'category_3'
      get 'search_1'
      get 'search_2'
      get 'search_3'
    end
  end
  resources :items do
    collection do
        get 'search'
    end
    member do
        get 'comments'
    end
    resources :comments, only: [:create,:destroy]
    end
end
