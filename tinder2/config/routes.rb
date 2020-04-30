Rails.application.routes.draw do

  #create
  get 'principal/welcome'
  get 'users/create', to: 'userscontroller#create'
  post 'users/create', to: 'userscontroller#new_user'
  get 'users/list', to: 'userscontroller#list'
  get 'salu2', to: 'hello#hola'
  get 'comunas/new', to: 'comunas#new'
  post 'comunas', to: 'comunas#create'

  get 'gustos/new', to: 'gustos#new'
  post 'gustos', to: 'gustos#create'

  get 'comentarios/new', to: 'comentarios#new'
  post 'comentarios', to: 'comentarios#create'

  #Read
  get 'comunas', to: 'comunas#index'
  get 'comunas/:id', to: 'comunas#show', as: 'comuna'

  get 'gustos', to: 'gustos#index'
  get 'gustos/:id', to: 'gustos#show', as: 'gusto'

  get 'comentarios', to: 'comentarios#index'
  get 'comentarios/:id', to: 'comentarios#show', as: 'comentario'
  #update
  get 'comunas/:id/edit', to: 'comunas#edit', as: :comunas_edit
  patch 'comunas/:id', to: 'comunas#update'

  get 'gustos/:id/edit', to: 'gustos#edit', as: :gustos_edit
  patch 'gustos/:id', to: 'gustos#update'

  get 'comentarios/:id/edit', to: 'comentarios#edit', as: :comentarios_edit
  patch 'comentarios/:id', to: 'comentarios#update'

  #delete
  delete 'comunas/:id', to: 'comunas#destroy'

  delete 'gustos/:id', to: 'gustos#destroy'

  delete 'comentarios/:id', to: 'comentarios#destroy'
  #pagina inicio
  get 'welcome', to: 'principal#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
