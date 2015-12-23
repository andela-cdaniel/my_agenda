BijouApp.routes.draw do
  root "pages#index" # list all todo items
  get "agenda/new", to: "agendas#new" # Return an html form for creating a new todo item
  post "agenda/new", to: "agendas#create" # Save a todo item
  #get "agenda/:id", to: "agendas#show" # Show a particular todo item
  get "agenda/:id/edit", to: "agendas#edit" # Return an html form for editing a todo item
  put "agenda/:id", to: "agendas#update" # Update a single todo item
  delete "agenda/:id", to: "agendas#destroy" # Delete a single todo item

  # index, show, new, edit => get,
  # create => post,
  # update => put,
  # destroy => delete
end
