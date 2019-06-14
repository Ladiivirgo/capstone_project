Rails.application.routes.draw do
  
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'
  
  get  'static_pages/about'

resources :todo_lists do
  resources :todo_items do
    member do
     patch :complete
    end
  end
end
  
root "todo_lists#index"

end