Rails.application.routes.draw do
  
  get 'dojos/index' => "dojos#index"
  get "/" => "dojos#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
