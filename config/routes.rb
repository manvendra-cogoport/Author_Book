Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/authors/post", to: "authors#create"

  post "/books/post", to: "books#create"  

  get "/authors", to: "authors#author_all"

  get "authors/:id", to: "authors#author_id"

  get "author/books", to: "authors#author_books"

  get "author/name", to: "authors#name"

  delete "author/:id", to: "authors#delete"

  get "/books", to: "books#all"

  put "book/:id", to: "books#update"

  delete "books/delete/:id" , to: "book#delete"


  get "author/bookbyid/:id", to: "authors#bookbyid"

  get "author/bookbyname", to: "authors#bookbyname"


 

end
