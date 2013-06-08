Rewsly::Application.routes.draw do
  root 'stories#index'
  resources :stories, only: [:new, :create, :show, :destroy]
  get 'search', to: 'stories#search'
  resources :categories, only: :show
end
