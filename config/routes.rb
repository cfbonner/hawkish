Rails.application.routes.draw do
  devise_for :users

  root 'skaters#show'
  get '/all', to: 'skaters#index'
  get '/edit', to: 'skaters#edit', as: :edit_skater
  patch '/update/:id', to: 'skaters#update', as: :skater
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
