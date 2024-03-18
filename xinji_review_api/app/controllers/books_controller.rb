class BooksController < ApplicationController
    def index
      @books = Book.page(params[:page]).per(params[:per]).decorate
    end
    
    def show
    end
end
