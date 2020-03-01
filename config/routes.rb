Rails.application.routes.draw do
  devise_for :installs
  get 'attendances/index'
  get 'attendances/edit'
  root to: "top#index"
  devise_for :users
  resources :reports do
    collection do
      get 'top'
    end
  end
  resources :attendances, only: [:index,:edit,:update]
  resources :groups, only: [:new,:create]
end
