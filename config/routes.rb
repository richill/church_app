Rails.application.routes.draw do
  resources :events do
    collection do
      get     'calendar-events',                 to: 'events#calendareventspg'
      get     'youth-events',                    to: 'events#youtheventspg'
      get     'church-events',                   to: 'events#churcheventspg'
      get     'community-events',                to: 'events#communityeventspg'
      get     'national-events',                 to: 'events#nationaleventspg'
    end
  end

  resources :launchministries do
    collection do
      get     'listed-ministries',                 to: 'events#ministriespg'
    end
  end
  
  devise_for :users
  resources :users
  
  root 'static_pages#homepg'
  get     'about-us',                 to: 'static_pages#aboutuspg'
  get     'around-the-world',         to: 'static_pages#aroundworldpg'
  get     'donations',                to: 'static_pages#donatepg'
  get     'gdpr',                     to: 'static_pages#gdprpg'
  get     'ministry-idea',            to: 'static_pages#ministryideapg'
  get     'mission-vision-statement', to: 'static_pages#missionvisionpg'
  get     'our-church',               to: 'static_pages#ourchurchpg'
  get     'our-community',            to: 'static_pages#ourcommunitypg'
  get     'our-people',               to: 'static_pages#ourpeoplepg'
  get     'privacy',                  to: 'static_pages#privacypg'
  get     'serve',                    to: 'static_pages#servepg'
  get     'statement-of-faith',       to: 'static_pages#statementfaithpg'
  get     'thank-you',                to: 'static_pages#thankyoupg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
