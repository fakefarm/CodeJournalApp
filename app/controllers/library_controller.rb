class LibraryController < ApplicationController

  def index
    @libraries = Library.all
  end

  def new
    @library = Library.new
  end

  def create
    @library = Library.new(params[:library])
    redirect_to '/librarys' if @library.save
  end

  def edit
    @library = Library.find(params[:id])
  end

  def show
    @library = Library.find(params[:id])
  end

  def update
    @library = Library.find(params[:id])
    if @library.update_attributes(params[:library])
     redirect_to @library, notice: "Library was successfully updated."
    else
      render action: "edit"
    end
  end


  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    redirect_to '/librarys'
  end

end