Rails.application.routes.draw do
  root to: 'rooms#show'

  get 'root/show'

  resources :hoges
end
