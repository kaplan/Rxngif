Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # Create
  get "pictures/new" => "Pictures#new"
  post "pictures/" => "Pictures#create"

  # Read
  get "pictures" => "Pictures#index"
  get "pictures/:id" => "Pictures#show"

  # Update
  get "pictures/:id/edit" => "Pictures#edit"
  post "edit_picture/:id" => "Pictures#update"

  # Delete
  get "pictures/:id/delete" => "Pictures#delete"
  post "delete_picture/:id" => "Pictures#destroy"

end
