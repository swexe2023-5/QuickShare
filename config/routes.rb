Rails.application.routes.draw do
  root 'top#index'
  resources :top
  resources :memos
end
