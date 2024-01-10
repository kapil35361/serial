Rails.application.routes.draw do
  namespace :controller do
    namespace :v1 do
      get 'employees/index'
      get 'employees/show'
    end
  end
  concern :api_base do
    resources :employees   
    resources :managers
  end

  namespace :v1 do
    get 'managers/index'
    get 'managers/show'
    concerns :api_base
  end
end
