Rails.application.routes.draw do
  root "products#index"

  namespace :api, :defaults => { :format => :json }  do
    namespace :v1 do
      resources :products do
        # get '/purchase', to: 'products#purchase'
      end
    end
  end
end
