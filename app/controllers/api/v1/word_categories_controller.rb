class Api::V1::WordCategoriesController < ApplicationController

    def show
        word_category = WordCategory.find(params[:id])
        render json: wordCategory
    end

    def index
        word_categories = WordCategory.all
        render json: word_categories
    end
end
