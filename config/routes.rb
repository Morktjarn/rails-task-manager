Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # afficher la liste
  get "tasks", to: "tasks#index"
  # afficher la task
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  # créer une task
  post "tasks", to: "tasks#create"
  # update
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end
