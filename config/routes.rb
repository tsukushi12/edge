Rails.application.routes.draw do
  resources :bbs, only: [:index, :new, :create]
  root to: 'bbs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
