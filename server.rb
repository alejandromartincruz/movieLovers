require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./models/quizMovies.rb"
quiz = QuizMovies.new


get "/"  do
	@posters = quiz.search_movies("Star Trek")
	erb :home
end