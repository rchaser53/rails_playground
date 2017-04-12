Rails.application.routes.draw do
  root to: 'rooms#show'

  get 'hoges/index'
  post 'hoges/add'
  post 'hoges/delete'
  get 'root/show'
end
