require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./models/quizMovies.rb"
require_relative "./models/questions.rb"

quiz = QuizMovies.new
quest = Questions.new

get "/"  do
	erb :home
end

post "/search_word" do
	quiz.search_movies(params[:word])
	redirect "/show_movies"
end

get "/show_movies" do
	@movies = quiz.movies
	@question = quest.question1(@movies)
	erb :showMovies
end