Rails.application.routes.draw do
  resources :chips, only: %i[index create destroy] do
    get 'edit', on: :collection
  end
  resources :shikigamis
  devise_for :users
  resources :huts
  # get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
