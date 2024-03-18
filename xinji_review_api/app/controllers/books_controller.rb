class BooksController < ApplicationController
    def index
      @books = Book.page(params[:page]).per(params[:per])
    end
    
    def show
    end
end
