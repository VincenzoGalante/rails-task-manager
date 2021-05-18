Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ##resources :tasks

  #delte
  delete "tasks/:id", to: "tasks#destroy", as: :destroy_tasks

  #update get the form and edit it
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_tasks
  patch "tasks/:id", to: "tasks#update", as: :task

  #create new tasks (show form and save)
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  #show all tasks (root) and details
  root to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :detail

end
