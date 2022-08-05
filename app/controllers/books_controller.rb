class BooksController < ApplicationController
  def new
    @list = Book.new
  end

  def index
  end

  def show
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_ '/books'
  end

 private
 def book_params
   params.require(:book).permit(:title, :body)
 end

end
