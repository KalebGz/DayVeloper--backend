class Api::V1::WordCategoriesController < ApplicationController

    
    def show
        word_category = WordCategory.find(params[:id])
        # Only show words that haven't been already studied yet
        # word_category = WordCategory.find(params[:id]).words_to_study
        render json: word_category
    end

    #  only used to find the titles of word categories and only display those that aren't empty
    def index
        word_categories = WordCategory.all
        render json: word_categories
    end
end
