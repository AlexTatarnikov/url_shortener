Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :links, only: [:create]
    end
  end

  root to: 'spa#index'

  get '*path', to: 'spa#index', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
