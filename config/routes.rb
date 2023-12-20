Rails.application.routes.draw do
  root 'top#index'
  get 'top/index'
  get 'memos/main'
  post 'top/search'
  get 'memos/:id', to: 'memos#show', as: 'memo'
  resources :memos
end
