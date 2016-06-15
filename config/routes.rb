Rails.application.routes.draw do
  root 'home#home'
  resources :members
end
