Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List all the tasks
  get 'tasks', to: 'tasks#index'
  # Create a task
  get 'tasks/new', to: 'tasks#new' # The `new` route needs to be *before* `show` route.
  post 'tasks', to: 'tasks#create'
  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_update
  patch 'tasks/:id', to: 'tasks#update'
  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task
end
