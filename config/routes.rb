Rails.application.routes.draw do

  root :to => 'home#search'
  get '/pokemon', to: 'home#pokemon'
  get  '/search', to: 'home#search'
  post 'home/pokemon'

  get '*path' => redirect('/')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
