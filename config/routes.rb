Rails.application.routes.draw do
  resources :corporations
  resources :links
  resources :categories
  get 'home_page/home'
  get 'home_page/search_list'
  get 'home_page/details'
  root  'home_page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
