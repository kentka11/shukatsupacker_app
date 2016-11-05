Rails.application.routes.draw do
  get 'signup' => 'users#new'
  resources :corporations
  resources :links
  resources :categories
  # get "home_page/search_list"
  get "home_page/details/:id" => "home_page#details"
  get 'comments' => 'home_page/comments'
  get 'rank' => 'home_page#rank'
  get '2ch' => 'home_page/nichan'
  get 'tools' => 'home_page/tools_list'
  get 'industry' => 'home_page#industry_analysis'
  get 'column' => 'home_page#column'
  get 'esschedule' => 'home_page#schedule'
  root  'home_page#home'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
