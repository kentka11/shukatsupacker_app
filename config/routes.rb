Rails.application.routes.draw do
  get 'signup' => 'users#new'
  resources :corporations
  resources :links
  resources :categories
  get 'home_page/home'
  get 'home_page/search_list'
  get 'home_page/details'
  get "home_page/details/:id" => "home_page#details"
  get 'home_page/comments'
  root  'home_page#home'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
