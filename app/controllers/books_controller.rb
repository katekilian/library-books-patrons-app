class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @library = Library.find(params[:library_id])
    @book = @library.books.new(book_params)
    @book = Book.new(book_params.merge(library_id: @library.id))
    if @book.save
      flash[:notice] = "Book successfully created!"
      redirect_to library_books_path(@library)
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :library_id)
  end

end
