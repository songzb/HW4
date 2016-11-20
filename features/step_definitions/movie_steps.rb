Given /the following movies exist/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end 
Then /^the director of "(.*)" should be "(.*)"$/ do |title_value,director_value|
  movie = Movie.find_by_title(title_value)
  expect(movie.director).to eq director_value
end