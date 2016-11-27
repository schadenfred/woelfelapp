Rails.application.routes.draw do
  resources :addresses
  resources :practice_locales
  resources :practice_areas
  devise_for :users
  get 'static/home'

  get 'static/about'

  get 'static/terms'

  get 'static/privacy'

  get 'static/contact'

  root to: 'static#home'
end
