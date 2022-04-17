Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'static_pages/home' #アクションと結びつけている
  get 'static_pages/help'
  get 'static_pages/about'
  get  'static_pages/contact'
  root 'static_pages#home'
  
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  
end

