class Questions

def question1(movies)
	@movies = movies
	i = Random.rand(0..7)
	"which one was released in <strong>#{@movies[i].release_date}</strong>"
end

end