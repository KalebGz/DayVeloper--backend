class Api::V1::TaskCategoriesController < ApplicationController
    
    def show
        task_category = TaskCategory.find(params[:id])
        render json: task_category
    end

    def index
        task_categories = TaskCategory.all
        render json: task_categories
    end
end
