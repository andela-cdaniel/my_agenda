BijouApp.routes.draw do
  root "pages#index" # list all todo items
  get "todo/new", to: "todos#new" # Return an html form for creating a new todo item
  post "todo/new", to: "todos#create" # Save a todo item
  get "todo/:id", to: "todos#show" # Show a particular todo item
  get "todo/:id/edit", to: "todos#edit" # Return an html form for editing a todo item
  put "todo/:id", to: "todos#update" # Update a single todo item
  delete "todo/:id", to: "todos#destroy" # Delete a single todo item

  # index, show, new, edit => get,
  # create => post,
  # update => put,
  # destroy => delete
end
