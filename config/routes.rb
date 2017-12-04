Rails.application.routes.draw do
  resources :metrics
  resources :sql_queries
  resources :data_sources
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
