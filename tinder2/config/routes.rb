Rails.application.routes.draw do
  get 'users/create', to: 'userscontroller#create'
  post 'users/create', to: 'userscontroller#new_user'
  get 'users/list', to: 'userscontroller#list'
  get 'salu2', to: 'hello#hola'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
