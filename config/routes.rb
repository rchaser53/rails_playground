Rails.application.routes.draw do
  root to: 'rooms#show'

  get 'hoges/index'
  post 'hoges/jjj'
  get 'root/show'
end
