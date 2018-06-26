Rails.application.routes.draw do
  resources :practicalneeds  do
    resources :comments, only: [:create, :destroy] 
  end
  resources :jobs
  resources :smallgroups
  resources :recommendedreadings
  resources :attending_groups, only: [:create, :destroy]

  resources :discussions do
    resources :comments, only: [:create, :destroy] 
  end
  
  resources :photos
  resources :galleries

  resources :galleries do
    resources :photos
  end

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
      get     'listed-ministries',                 to: 'launchministries#ministriespg'
    end
  end
  
  devise_for :users
  resources :users do
    resources :jobs
    resources :practicalneeds
    resources :comments, only: [:create, :destroy] 
    member do
      get 'dashboard'
      get 'sitelinks'
      get 'stats-users'
      get 'stats_ministries'
    end
  end
  
  root    'static_pages#homepg'
  get     'about-us',                 to: 'static_pages#aboutuspg'
  get     'around-the-world',         to: 'static_pages#aroundworldpg'
  get     'baptism',                  to: 'static_pages#baptismpg'
  get     'bible-and-you',            to: 'static_pages#bibleandyoupg'
  get     'broadfields-resource',     to: 'static_pages#broadfieldresoucepg'
  get     'careers-and-volunteers',   to: 'static_pages#careersvolunteerspg'
  get     'career-jobs',              to: 'static_pages#careerjobspg'
  get     'contact',                  to: 'static_pages#contactpg'
  get     'contact-list',             to: 'static_pages#contactlistpg'
  get     'connect',                  to: 'static_pages#connectdpg'
  get     'children-teenage-corner',  to: 'static_pages#childrenteenpg'
  get     'church-jobs',              to: 'static_pages#churchjobspg'
  get     'directions',               to: 'static_pages#directionpg'
  get     'donations',                to: 'static_pages#donatepg'
  get     'forum',                    to: 'static_pages#forumpg'
  get     'get-connected',            to: 'static_pages#getconnectedpg'
  get     'gdpr',                     to: 'static_pages#gdprpg'
  get     'grow',                     to: 'static_pages#growpg'
  get     'leadership-development',   to: 'static_pages#leadershipdevelopmentpg'
  get     'next-steps',               to: 'static_pages#nextstepspg'
  get     'media-and-communication',  to: 'static_pages#mediaandcomepg'
  get     'ministry-idea',            to: 'static_pages#ministryideapg'
  get     'mission-vision-statement', to: 'static_pages#missionvisionpg'
  get     'our-church',               to: 'static_pages#ourchurchpg'
  get     'our-community',            to: 'static_pages#ourcommunitypg'
  get     'our-people',               to: 'static_pages#ourpeoplepg'
  get     'practical-needs',          to: 'static_pages#practicalneedspg'
  get     'privacy',                  to: 'static_pages#privacypg'
  get     'receive-christ',           to: 'static_pages#receivechristpg'
  get     'recommeded-reading-plan',  to: 'static_pages#recreadingplanpg'
  get     'resources',                to: 'static_pages#resourcespg'
  get     'serve',                    to: 'static_pages#servepg'
  get     'service-times',            to: 'static_pages#servicetimespg'
  get     'small-groups',             to: 'static_pages#smallgroupspg'
  get     'statement-of-faith',       to: 'static_pages#statementfaithpg'
  get     'support',                  to: 'static_pages#supportpg'
  get     'thank-you',                to: 'static_pages#thankyoupg'
  get     'the-bible',                to: 'static_pages#thebiblepg'
  get     'useful-services',          to: 'static_pages#usefulservicespg'
  get     'volunteer-jobs',           to: 'static_pages#volunteerpg'
  get     'youth',                    to: 'static_pages#youthpg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
