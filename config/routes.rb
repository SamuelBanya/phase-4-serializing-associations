Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  get '/movies/:id/summary', to: 'movies#summary'
  get '/movie_summaries', to: 'movies#summaries'
  resources :directors, only: [:index, :show]
  # NOTE: Commented out for 'best programming practices':
  # resources :reviews, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
