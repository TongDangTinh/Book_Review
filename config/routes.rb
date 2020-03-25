Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do 
    resources :books
    root "books#index"
  end
end
