Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'static_pages#homepg'
  get     'privacy',           to: 'static_pages#privacypg'
  get     'about-us',          to: 'static_pages#aboutuspg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
