class WordsController < ApplicationController
    before_action :set_word, only: [:show]

    def index
        @words = Book.find(params[:book_id]).words.includes(:marks).joins("""
            LEFT OUTER JOIN (#{Mark.where(markable_type: Word, user: @current_user).to_sql}) AS marks ON marks.markable_id = words.id
        """).distinct.page(params[:page]).per(params[:per]).decorate
    end

    def show
        @mark = @word.marks.find_by(user: @current_user)&.decorate
    end

    private

    def set_word
        @word = Word.find(params[:id])
    end
end
