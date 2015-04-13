Rails.application.routes.draw do
  # resources :users
  get 'users',          to: 'users#index'
  post 'users',         to: 'users#create'
  get 'users/new' => 'users#new', :as => 'new_user'
  get 'users/:id/edit' => 'users#edit', :as=> 'edit_user'
  get 'users/:id' => 'users#show', :as => 'user'
  patch 'users/:id',    to: 'users#update'
  put 'users/:id',      to: 'users#update'
  delete 'users/:id',   to: 'users#destroy'
end
