Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:create, :show, :edit, :new, :update, :index]
  resources :artists, only: [:create, :show, :edit, :new, :update]
  resources :genres, only: [:create, :show, :edit, :new, :update]

end
