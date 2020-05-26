Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'hello#hola'

  resources :restaurants do
    resources :comentarios
  end

  resources :users do
    resources :gustos
  end
  

  #cuenta
  get 'cuenta', to: 'cuenta#show'
  get 'confirmacion', to: 'cuenta#delete'
  get 'eliminada', to: 'cuenta#done'
  get 'cuenta/edit', to: 'cuenta#edit'

  get 'coments', to: 'comentarios#index'

  #get 'user', to: 'cuenta#show'
  #patch 'user', to: 'cuenta#update'
  #delete 'users', to: 'cuentas#destroy', as: 'delete'
  #create
  get 'principal/welcome'
  get 'comunas/new', to: 'comunas#new'
  post 'comunas', to: 'comunas#create'

  #get 'gustos/new', to: 'gustos#new'
  #post 'gustos', to: 'gustos#create'

  #get 'comentarios/new', to: 'comentarios#new'
  #post 'comentarios', to: 'comentarios#create'

  get 'meetings/new', to: 'meetings#new'
  post 'meetings', to: 'meetings#create'

  #Read
  get 'comunas', to: 'comunas#index'
  get 'comunas/:id', to: 'comunas#show', as: 'comuna'

  #get 'gustos', to: 'gustos#index'
  #get 'gustos/:id', to: 'gustos#show', as: 'gusto'

  #get 'comentarios', to: 'comentarios#index'
  #get 'comentarios/:id', to: 'comentarios#show', as: 'comentario'

  get 'meetings', to: 'meetings#index'
  get 'meetings/:id', to: 'meetings#show', as: 'meeting'

  #update
  get 'comunas/:id/edit', to: 'comunas#edit', as: :comunas_edit
  patch 'comunas/:id', to: 'comunas#update'

  #get 'gustos/:id/edit', to: 'gustos#edit', as: :gustos_edit
  #patch 'gustos/:id', to: 'gustos#update'

  #get 'comentarios/:id/edit', to: 'comentarios#edit', as: :comentarios_edit
  #patch 'comentarios/:id', to: 'comentarios#update'

  get 'meetings/:id/edit', to: 'meetings#edit', as: :meetings_edit
  patch 'meetings/:id', to: 'meetings#update'

  #delete
  delete 'comunas/:id', to: 'comunas#destroy'

  delete 'gustos/:id', to: 'gustos#destroy'

  #delete 'comentarios/:id', to: 'comentarios#destroy'

  delete 'meetings/:id', to: 'meetings#destroy'
  #pagina inicio
  get 'welcome', to: 'principal#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ###Restaurants
  #get 'restaurants/new', to: 'restaurants#new'
  #post 'restaurants', to: 'restaurants#create'
  #Read
  #get 'restaurants', to: 'restaurants#index'
  #get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  #update
  #get 'restaurants/:id/edit', to: 'restaurants#edit', as: :restaurants_edit
  #patch 'restaurants/:id', to: 'restaurants#update'
  #delete
  #delete 'restaurants/:id', to: 'restaurants#destroy'

  #delete 'hola/:id', to 'cuenta#eliminar_cuenta'
end