Rewsly::Application.routes.draw do
  root 'stories#index'
  get 'search', to: 'stories#search'
end
