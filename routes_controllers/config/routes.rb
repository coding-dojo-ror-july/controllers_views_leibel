Rails.application.routes.draw do
  root "displays#index"
  get "say/hello" => "displays#hello"
  # the :name param becomes options
  get "say/hello/michael" => "displays#michael"
  get "say/hello(/:name)" => "displays#say"
  
  get "times" => "displays#times"
  get "times/restart" => "displays#restart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
