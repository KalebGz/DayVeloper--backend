class Api::V1::UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def index
        task_categories = User.all
        render json: task_categories
    end


end
