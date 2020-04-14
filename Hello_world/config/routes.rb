Rails.application.routes.draw do
  get 'hello', to: 'greetings#hello'
  #se le agrega /:input para colocar menos en la ruta
  get 'square', to: 'greetings#square', defaults:{input:20}
  get 'square/:input', to: 'greetings#square', constraints:{input:/\d{1,10}/}
  get 'multi', to: 'greetings#multiplicacion'
  #get 'redirect', to: 'greetings#redirect'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

