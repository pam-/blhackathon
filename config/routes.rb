Rails.application.routes.draw do
  # root to: 'ideas#new'
  root to: 'home#about'
  resources :ideas
end
