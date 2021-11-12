Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    '/restaurants',          to: 'restaurants#index'
  post   '/restaurants',          to: 'restaurants#create'
  get    '/restaurants/new',      to: 'restaurants#new'
  get    '/restaurants/:id/edit', to: 'restaurants#edit'
  get    '/restaurants/:id',      to: 'restaurants#show'
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
