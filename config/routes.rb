Rails.application.routes.draw do
  get 'index', to: 'hacker_news#index'
  get 'relevant_comments_json', to: 'hacker_news#relevant_comments_json'
  get 'search', to: 'hacker_news#search'
  root 'hacker_news#index'
end
