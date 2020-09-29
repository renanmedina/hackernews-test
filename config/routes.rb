Rails.application.routes.draw do
  get 'index', to: 'hacker_news#index'
  get 'search', to: 'hacker_news#search'
  root 'hacker_news#index'
end
