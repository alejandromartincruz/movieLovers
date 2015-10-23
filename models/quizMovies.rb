require "imdb"

class QuizMovies
	attr_reader :movies

	def initialize
		@movies = []
		@posters = []
	end


	def search_movies(movie)
		search = Imdb::Search.new(movie)
		@movies = search.movies.first(15)
		filter_movies_that_include_poster(@movies)
	end


	def filter_movies_that_include_poster(movies)
		@movies.each do |movie|
			if movie.poster != nil
			  add_movies(movie)
			end
		end
		@movies = @posters
	end


	def add_movies(movie)
		@posters << movie
	end


end