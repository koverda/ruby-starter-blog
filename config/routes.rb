Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "articles#index"
  resources :articles do
    resources :comments
  end

end
