class WordsController < ApplicationController
    before_action :set_word, only: [:show]

    def index
        @words = Book.find(params[:book_id]).words.page(params[:page]).per(params[:per]).decorate
    end

    private

    def set_word
        @word = Word.find(params[:id])
    end
end
