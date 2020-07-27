class Api::V1::WordsController < ApplicationController
    def create
        word = Word.create(word_params)
        render json: word
        # byebug
    end

    def update
        word = Word.find(params[:id])
        word.update(word_params)
        render json: word
    end

    def destroy
        word = Word.find(params[:id])
        word.destroy
        render json: "word was successfully destroyed"
    end

    private
    def word_params
        params.require(:word).permit(:term, :definition, :studied, :user_id, :word_category_id)
    end
end
