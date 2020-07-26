Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Index, show, create, update, delete
      resources :users, only: [:index, :show, :create, :update, :delete]
      resources :tasks, only: [:show, :update, :delete]
      resources :task_categories, only: [:index, :show, :create, :update, :delete]
      resources :subtasks, only: [:index, :show, :create, :update, :delete]
      resources :words, only: [:update, :delete]
      resources :word_categories, only: [:index, :show, :create, :update, :delete]
      resources :events, only: [:index, :show, :create, :update, :delete]
    end
  end
end
