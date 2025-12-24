class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    ridirect_to '/books'
  end

  def index
  end

  def show
  end

  def edit
  end
end

private

def book_params
  params.require(:book).permit(:title, :body)
end