Rails.application.routes.draw do
  resources :disputes, only: [:create, :show, :index]
end
