Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :tasks, only: [:show, :create, :update, :destroy]
      resources :task_categories, only: [:index, :show, :create, :update, :destroy]
      resources :subtasks, only: [:index, :show, :create, :update, :destroy]
      resources :words, only: [:create, :update, :destroy]
      resources :word_categories, only: [:index, :show, :create, :update, :destroy]
      resources :events, only: [:index, :create, :update, :destroy]
    end
  end
end
