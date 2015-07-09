Rails.application.routes.draw do

  root to: 'welcome#home'

  resources :words

  get '/search/index', to: 'search#index', as: :search

end
