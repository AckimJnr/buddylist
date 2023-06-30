Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"
  end



  resources :friends
  root "home#index"
  get "/home/about/", to: "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
