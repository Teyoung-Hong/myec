class Admins::GenresController < ApplicationController
  
  def new
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    genre = Genre.new(genre_params)
    if genre.save
	    render :json => genre.genre_name
    else
      render 'new'
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:genre_name)
  end
end
