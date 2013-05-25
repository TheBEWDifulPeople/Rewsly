Rewsly::Application.routes.draw do
  root 'stories#index'
  resources :stories, only: [:new, :create, :show]
  get 'search', to: 'stories#search'
end
