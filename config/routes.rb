Rails.application.routes.draw do
  resources :jokes do
    member do 
      put 'like', to: "jokes#like"
  		delete 'unlike', to: "jokes#unlike"
    end
    
    
  end
  devise_for :users
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
end
