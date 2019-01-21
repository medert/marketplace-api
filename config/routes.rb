Rails.application.routes.draw do
  apipie
  root "api/v1/products#index"

  namespace :api, :defaults => { :format => :json }  do
    namespace :v1 do
      resources :products do
        get '/purchase', to: 'products#purchase'
      end
    end
  end
end
