Rails.application.routes.draw do
  get 'people/new'

  root           'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'help'  => 'static_pages#help'
  get 'signup'=> 'people#new'

  resources :microposts
  resources :users
  resources :people
end
