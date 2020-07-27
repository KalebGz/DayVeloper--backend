class Api::V1::SubtasksController < ApplicationController

    def create
        subtask = Subtask.create(subtask_params)
        render json: subtask
        # byebug
    end

    def update
        subtask = Subtask.find[params[:id]]
        subtask.update(subtask_params)
        render json: subtask
    end

    def destroy
        subtask = Subtask.find[params[:id]]
        subtask.destroy
        render json: "subtask was successfully destroyed"
    end

    private
    def subtask_params
        params.require(:subtask).permit(:title, :completed, :user_id, :task_id)
    end
end
