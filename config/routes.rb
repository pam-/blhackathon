Rails.application.routes.draw do
  root to: 'ideas#new'

  resources :ideas
end
