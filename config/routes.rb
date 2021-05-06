Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :index, only: [:index]
      namespace :user do
        resource :user, only: [:create, :destroy, :show]
      end
    end
  end
end
