require 'csv'
require_relative 'movie'
require 'pry-byebug'

class MakeMovies

  def initialize(csv_path)
    @csv_path = csv_path
    @movies = []
    CSV.foreach(@csv_path) do |row|
      @movies << Movie.new(row[0], row[1])
    end
  end

  def add_movie(movie)
    @movies << movie
    save_changes
  end

  def remove_movie(index_movie)
    @movies.delete_at(index_movie)
    save_changes
  end

  def all
    @movies
  end

  def save_changes
    CSV.open(@csv_path, "wb") do |csv|
      @movies.each do |item|
        csv << [item.name, item.description]
      end
    end
  end

end
# x = Movie.new("Matrix", "Mt top")
# p x
# y = MakeMovies.new
# y.open_movie('movies.csv')
# p y.all
