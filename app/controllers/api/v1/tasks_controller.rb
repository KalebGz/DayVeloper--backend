class Api::V1::TasksController < ApplicationController
    def show
        task = Task.find(params[:id])
        render json: task
    end


    def create
        task = Task.create(task_params)
        render json: task
    end

    def update
        task = Task.find[params[:id]]
        task.update(task_params)
        render json: task
    end

    def destroy
        task = Task.find[params[:id]]
        task.destroy
        render json: "task was successfully destroyed"
    end

    private
    def task_params
        params.require(:task).permit(:title, :description, :completed, :user_id, :task_category_id)
    end

end
