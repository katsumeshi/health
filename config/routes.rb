Rails.application.routes.draw do
  # get ''

  # get 'calc/index'
  # post 'calc#calc'

  # post "calc/show" => "calc#show"

  post '/', to: 'calc#calc'
  
  # resources :calc

  root 'calc#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
