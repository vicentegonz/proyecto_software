Rails.application.routes.draw do
  get 'principal/welcome'
  get 'users/create', to: 'userscontroller#create'
  post 'users/create', to: 'userscontroller#new_user'
  get 'users/list', to: 'userscontroller#list'
  get 'salu2', to: 'hello#hola'
  get 'comunas/new', to: 'comunas#new'
  post 'comunas', to: 'comunas#create'
  #Read
  get 'comunas', to: 'comunas#index'
  get 'comunas/:id', to: 'comunas#show', as: 'comuna'
  #update
  get 'comunas/:id/edit', to: 'comunas#edit', as: :comunas_edit
  patch 'comunas/:id', to: 'comunas#update'
  #delete
  delete 'comunas/:id', to: 'comunas#destroy'
  #pagina inicio
  get 'welcome', to: 'principal#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ###Restaurants
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  #Read
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  #update
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :restaurants_edit
  patch 'restaurants/:id', to: 'restaurants#update'
  #delete
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
