Rails.application.routes.draw do
  root to: 'rooms#show'

  get 'root/show'
  get 'components/index'

  resources :hoges
end
