json.array!(@movies) do |movie|
  json.extract! movie, :id, :description, :movie_lenght, :director, :rating
  json.url movie_url(movie, format: :json)
end
