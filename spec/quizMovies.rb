require "imdb"

class QuizMovies
	attr_reader :posters

	def initialize
		@movies = []
		@posters = []
	end

	def search_movies(movie)
		search = Imdb::Search.new(movie)
		movies = search.movies.first(6)
		movies.each do |movie|
			  @posters << movie.title
		end
		return @posters
	end


end

quiz = QuizMovies.new
posters = quiz.search_movies("Star Trek")
posters.each do |poster|
	p poster
end