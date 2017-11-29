Rails.application.routes.draw do
  get 'main/index'
  get 'main/dividebyzero'
  get 'main/nyt'
  get 'main/desc'
  root to: "main#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
