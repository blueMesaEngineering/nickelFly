movies = [
    {
        "title" => "Shawshank Redemption",
        "genre" => "Drama",
        "review" => "When Andy crawled out of that sewer, I almost cried."
    },
    {
        "title" => "Toy Story",
        "genre" => "Animated",
        "review" => "To infinity and beyond!"
    },
    {
        "title" => "Avengers",
        "genre" => "Superhero",
        "review" => "When will they stop making these movies?"
    },
    {
        "title" => "Matrix",
        "genre" => "Science Fiction",
        "review" => "There is no spoon."
    },
    
]

movies.each do |x|
    movie = Movie.create(title: x["title"], genre: x["genre"])
    Review.create(content: x["review"], movie_id: movie.id)
end