Rails.application.routes.draw do
  resources :tags
  resources :frameworks
  resources :content_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
