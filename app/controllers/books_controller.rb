class BooksController < ApplicationController
  def top
    
  end
  
  def show
  end

  
  
  def index 
    @book = Book.new
  end
   
  def create
    book = Book.new(book_params)
    Book.save
    redirect_to books_path
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
