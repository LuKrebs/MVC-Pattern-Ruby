require_relative 'make_movies'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

csv_file = 'movies.csv'
make_movie = MakeMovies.new(csv_file)
controller = Controller.new(make_movie)

router = Router.new(controller)

# Start the app
router.run
