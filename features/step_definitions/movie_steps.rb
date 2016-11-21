Given /the following movies exist/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end 
Then /^the director of "(.*)" should be "(.*)"$/ do |title_value,director_value|
  movie = Movie.find_by_title(title_value)
  expect(movie.director).to eq director_value
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  
  regexp = /#{e1}.*#{e2}/m  #m make dot match newlines
  expect(page.body).to match(regexp)
end