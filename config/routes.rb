Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :challenges do
        resources :submissions
      end
      resources :submissions
    end
  end
end
