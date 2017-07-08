class View

  def show_all_movies(movies)
    puts "Here's your movies: "
    movies.each_with_index do |movie, index|
      puts "#{index + 1} - #{movie.name}"
      puts "Review: #{movie.description}"
      puts ""
    end
  end

  def create_movie
    puts "What movie do you want to creat?"
    movie_name = gets.chomp

    puts "What is the movie description?"
    movie_description = gets.chomp

    [movie_name, movie_description]
  end

  def removing
    puts "What is the movies' number do you want to delete??"
    index_of_movie = gets.chomp.to_i - 1

    index_of_movie
  end
end
