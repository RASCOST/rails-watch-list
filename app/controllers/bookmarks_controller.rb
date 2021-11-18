class BookmarksController < ApplicationController
  def new
    @movies = Movie.all
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    movies = Movie.all
    id = params[:bookmark][:movie].to_i
    movie = Movie.where(title: movies[id - 1].title)

    @bookmark = Bookmark.new
    @bookmark.list = List.find(params[:list_id].to_i)
    @bookmark.movie = movie.first
    @bookmark.comment = params[:bookmark][:comment]

    if @bookmark.save
      redirect_to lists_path(params[:list_id])
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.where(movie_id: params[:id])
    @bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id)
  end
end
