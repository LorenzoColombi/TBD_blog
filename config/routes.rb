Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index" # => root_path

  # Defines the root path route ("/")
  #get 'articles/index'
  
  # root "articles#index"
  #get "/articles", to: "articles#index"
  
  # Defines the articles#index path route ("/articles")
  #get "/articles/:id", to: "articles#show"


  #all the CRUD route actions
  resources :categories
  

  resources :articles do
    resources :comments
    resources :categories
  end
end
