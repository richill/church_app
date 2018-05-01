Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  root 'static_pages#homepg'
  get     'about-us',           to: 'static_pages#aboutuspg'
  get     'donate',              to: 'static_pages#donatepg'
  get     'privacy',            to: 'static_pages#privacypg'
  get     'serve',              to: 'static_pages#servepg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
