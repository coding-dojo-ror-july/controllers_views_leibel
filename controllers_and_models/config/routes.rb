Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/total' => 'users#total'

  get 'users/new' => 'users#new'

  post 'users' => 'users#create'

  get "users/:id" => 'users#show'

  get 'users/:id/edit' => 'users#edit'

  patch 'users/:id' => 'users#update'
  
  get 'users/total' => 'users#total'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
