Rails.application.routes.draw do
  resources :entities
  resources :services
  resources :subject_access_requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
