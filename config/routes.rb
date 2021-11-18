Rails.application.routes.draw do
  resources :movies, only: %i[index show new create]
  resources :lists, only: %i[index show new create]
end
