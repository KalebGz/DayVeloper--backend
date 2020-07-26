class Api::V1::TasksController < ApplicationController
    def show
        task = Task.find(params[:id])
        render json: task
    end
end
