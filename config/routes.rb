Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # # INDEX
  get '/tasks', to: 'tasks#index', as: :index
  # # SHOW
  get '/tasks/:id', to: 'tasks#show', as: :show
  # # NEW
  get '/tasks/new', to: 'tasks#new'
  # # CREATE
  post '/tasks', to: 'tasks#create'
  # # EDIT
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  post '/tasks/:id/done', to: 'tasks#done'
  # # UPDATE
  put 'tasks/:id', to: 'tasks#update'
  # # DELETE
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete

end
