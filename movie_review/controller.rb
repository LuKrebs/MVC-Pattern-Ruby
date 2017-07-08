require_relative 'view'

class Controller

  def initialize(make_movie)
    @make_movie = make_movie
    @view = View.new
  end

  def list
    movies = @make_movie.all
    @view.show_all_movies(movies)
  end

  def create
    movie = @view.create_movie
    name_and_description = Movie.new(movie[0], movie[1])
    @make_movie.add_movie(name_and_description)
    list
  end

  def destroy
    index_number = @view.removing
    @make_movie.remove_movie(index_number)
  end
end
