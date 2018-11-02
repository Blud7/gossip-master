Rails.application.routes.draw do

  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  resources :gossips

  resources :gossips do
    resources :comments
  end



end
