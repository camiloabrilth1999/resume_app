Rails.application.routes.draw do

  #  devise_for :users
  devise_for :users, path: 'users', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret',
    confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }

  #devise_scope :user do
    #get 'sign_in', to: 'devise/sessions#new'
  #end
  get 'perfil/datos_personales(/:id)', to: 'users#show', as: 'user'
  get 'perfil/datos_academicos(/:id)', action: :show_academic, controller: 'users', as: 'user_academic'
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
