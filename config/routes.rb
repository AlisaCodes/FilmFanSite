Rails.application.routes.draw do
  resources :films do
    resources :comments
  end
end
