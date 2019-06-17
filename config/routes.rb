Rails.application.routes.draw do
  
  get 'users/new'

  root 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  resources :users
  post '/signup',  to: 'users#create'

resources :todo_lists do
  resources :todo_items do
    member do
     patch :complete
    end
  end
end
  
root "todo_lists#index"

end