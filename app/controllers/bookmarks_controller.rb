class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
    @movies = Movie.all
  end

  def create
    @bookmark = Bookmark.new(list_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      @movies = Movie.all
      render :new, status: :unprocessable_entity
    end
  end

  private
  def list_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
