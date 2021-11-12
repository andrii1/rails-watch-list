Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    '/lists',          to: 'lists#index'
  post   '/lists',          to: 'lists#create'
  get    '/lists/new',      to: 'lists#new'
  get    '/lists/:id',      to: 'lists#show'


  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
    # get '/restaurants/:restaurant_id/reviews/new', to: "reviews#new"
    # post '/restaurants/:restaurant_id/reviews/', to: "reviews#create'
  end
  resources :bookmarks, only: [ :destroy ]

end
