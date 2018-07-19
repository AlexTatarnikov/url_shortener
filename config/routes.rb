Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :links, only: [:create]
    end
  end

  get '/:code', to: 'redirects#show'

  root to: 'spa#index'
end
