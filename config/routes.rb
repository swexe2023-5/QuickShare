Rails.application.routes.draw do
  root 'top#index'
  get 'top/index'
  get 'memos/main'
  get 'top/search'
end
