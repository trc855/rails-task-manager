Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #read all
  get "tasks", to: "tasks#index"
  # Create
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  # Read one - The `show` route needs to be *after* `new` route.
  get"tasks/:id",to: "tasks#show", as: :task
  # update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end
