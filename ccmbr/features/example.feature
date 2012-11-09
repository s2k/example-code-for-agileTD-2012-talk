Feature: Website can be searched

Scenario: The pry video on vimeo will be found
  Given a working test setup
  When I google for 'pry video josh'
  Then 'Pry Screencast on Vimeo' should be one of the results
