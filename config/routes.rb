Rails.application.routes.draw do

  mount Bloggable::Engine => ""
  mount Galleriable::Engine => ""
  mount Optimizable::Engine => ""

  resources :addresses
  resources :practice_locales
  resources :practice_areas

  devise_for :users

  get '/home',          to: 'static#home'
  get '/about',         to: 'static#about'
  get '/terms',         to: 'static#terms'
  get '/privacy',       to: 'static#privacy'
  get '/contact',       to: 'static#contact'

  root to: 'static#home'
end
