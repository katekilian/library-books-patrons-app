class LibrariesController < ApplicationController

  def show
    @library = Library.find(params[:id])
  end

  private

  def library_params
    params.require(:library).require(:name, :address)
  end

end
