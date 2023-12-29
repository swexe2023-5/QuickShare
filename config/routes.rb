Rails.application.routes.draw do
  root 'top#index'
  get 'top/index'
  get 'memos/main'
  post 'top/search'
  resources :memos
end
