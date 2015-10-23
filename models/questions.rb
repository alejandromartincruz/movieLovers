class Questions
	attr_reader :answer, :is_ok

def initialize
	@answer
	@is_ok
end

def question1(movies)
	@movies = movies
	i = Random.rand(0..7)
	@answer = @movies[i]
	"which one was released in <strong>#{@movies[i].release_date}</strong>"
end

def answer_to_question(reply, solution)
	if @answer.release_date == reply
		@is_ok = true
	else
		@is_ok = false
	end
end


end