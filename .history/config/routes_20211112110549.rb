Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    '/lists',          to: 'lists#index'
  post   '/lists',          to: 'lists#create'
  get    '/lists/new',      to: 'lists#new'
  get    '/restaurants/:id/edit', to: 'restaurants#edit'
  get    '/lists/:id',      to: 'lists#show'
  patch  '/restaurants/:id',      to: 'restaurants#update'
  delete '/restaurants/:id',      to: 'restaurants#destroy'

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    # get '/restaurants/:restaurant_id/reviews/new', to: "reviews#new"
    # post '/restaurants/:restaurant_id/reviews/', to: "reviews#create'
    collection do
      get :top
    end
    member do
      get :chef
    end
  end
  resources :reviews, only: [ :destroy ]

end
