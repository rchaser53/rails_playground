Rails.application.routes.draw do
  root to: 'rooms#show'

  post 'hoges/add'
  post 'hoges/delete'
  get 'root/show'

  resources :hoges
end
