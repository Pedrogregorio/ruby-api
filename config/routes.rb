Rails.application.routes.draw do
  resources :index
  namespace :usuario, defaults: { format: :json } do
    resource :create
  end
end
