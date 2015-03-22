class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book successfully created!"
      @library = Book.last.library(params[:id])
      redirect_to library_path(@library)
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :library_id)
  end

end
