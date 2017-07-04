Rails.application.routes.draw do
  get '/', to: 'cyphers#encrypt'

  get 'decrypt', to: 'cyphers#decrypt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
