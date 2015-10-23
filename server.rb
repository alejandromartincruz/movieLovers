require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./models/quizMovies.rb"
quiz = QuizMovies.new
#@word = ""
#@@movies = []

get "/"  do
	erb :home
end

post "/search_word" do
	quiz.search_movies(params[:word])
	redirect "/show_movies"
end

get "/show_movies" do
	@movies = quiz.movies
	erb :showMovies
end