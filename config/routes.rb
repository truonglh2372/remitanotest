Rails.application.routes.draw do
  get 'articles/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :articles
end
