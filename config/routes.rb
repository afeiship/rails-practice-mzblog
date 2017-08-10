Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root 'posts#index'

  namespace :admin do
    # sign_up:
    get :sign_up, to: 'users#new'
    post :sign_up, to: 'users#create'

    # sign_in:
    get :sign_in, to: 'sessions#new'
    post :sign_in, to: 'sessions#create'
    
    # sign_out:
    get :sign_out, to:'sessions#destroy'

    resources :posts
    root to:'posts#index'
  end
end
