Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  root 'static_pages#homepg'
  get     'about-us',                 to: 'static_pages#aboutuspg'
  get     'around-the-world',         to: 'static_pages#aroundworldpg'
  get     'donations',                to: 'static_pages#donatepg'
  get     'mission-vision-statement', to: 'static_pages#missionvisionpg'
  get     'our-people',               to: 'static_pages#ourpeoplepg'
  get     'privacy',                  to: 'static_pages#privacypg'
  get     'serve',                    to: 'static_pages#servepg'
  get     'statement-of-faith',       to: 'static_pages#statementfaithpg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
