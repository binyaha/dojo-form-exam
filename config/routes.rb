Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articles#index"
  get 'website', :to => 'website#index'
  resources :articles do
    collection do
      get :work
      get :fun
      get :mood
      get :study
      get :others
    end
  end

end
