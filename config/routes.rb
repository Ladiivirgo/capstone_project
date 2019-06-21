Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  '/todo-list', to: "todo_lists#index"
  get    '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

resources :todo_lists do
  resources :todo_items do
    member do
     patch :complete
    end
  end
end
  


end