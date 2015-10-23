require "imdb"

class QuizMovies
	attr_reader :posters

	def initialize
		@movies = []
		@posters = []
	end

	def search_movies(movie="star trek")

		search = Imdb::Search.new(movie)
		movies = search.movies.first(15)
		movies.each do |movie|
			if movie.poster != nil
			  @posters << movie.poster
			end
		end
		@posters = @posters.first(9)
	end


end