Rails.application.routes.draw do
  resources :diaries do
    resources :works, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :works, only: [] do
    resource :memo, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :categories, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :templates, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :settings, only: [:index]
  
  get 'templates/get_body'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'diaries#index'
end