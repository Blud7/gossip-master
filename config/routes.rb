Rails.application.routes.draw do
  get 'gossips/new'
  get 'gossips/create'
  get 'gossips/index'
  get 'gossips/show'
  get 'gossips/edit'
  get 'gossips/update'
  get 'gossips/destroy'
  get '/index', to: 'gossips#index'

  get 'gossips/show/:id', to: 'gossips#show'

  get '/', to: 'static_pages#home'
  post 'gossips/create', to: 'gossips#create'

  resources :gossips
  resources :static_pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
