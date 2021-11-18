Rails.application.routes.draw do
  resources :lists, only: %i[index show new create] do
    resources :bookmakers, only: %i[new create]
  end
end
