Rails.application.routes.draw do
  root to: 'forums#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :forums, only: :index do
    collection do
      get :secure
      get :authorized
      get :commenting
      get :commenting2
    end
  end
end
