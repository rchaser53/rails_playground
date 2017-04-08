Rails.application.routes.draw do
  root to: 'rooms#show'

  get 'hoges/new'
  post 'hoges/jjj'
  get 'root/show'
end
