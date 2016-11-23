Feature: create movie
  
  As a rottenpotatoes user
  So that I can manage the list of movies
  I want to be able to create a movie
  
Scenario: creating a new movie
  When I am on the RottenPotatoes home page
  And I follow "Add new movie"
  And I fill in "Title" with "Kimi no na wa"
  And I select "PG-13" from "Rating"
  And I select "2016" from "movie_release_date_1i"
  And I select "July" from "movie_release_date_2i"
  And I select "3" from "movie_release_date_3i"
  And I press "Save Changes"
  Then I should see "Kimi no na wa was successfully created."
  And I should see "PG-13"
  And I should see "2016-07-03"