Rails.application.routes.draw do
  get '/this-is-not-a-drill', to: 'ideas#new'
  resources :ideas
end
