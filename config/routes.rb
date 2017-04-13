Rails.application.routes.draw do
  root to: 'rooms#show'

  post 'hoges/add'
  get 'root/show'

  resources :hoges
end
