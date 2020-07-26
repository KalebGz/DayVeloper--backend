class Api::V1::TaskCategoriesController < ApplicationController
    
    def show
        task_category = TaskCategory.find(params[:id])
        render json: taskCategory
    end

    def index
        task_categories = TaskCategory.all
        render json: task_categories
    end
end
