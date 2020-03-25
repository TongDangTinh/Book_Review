Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)", locale: /en|vi/ do 
    resources :books
    root "books#index"
  end
end
