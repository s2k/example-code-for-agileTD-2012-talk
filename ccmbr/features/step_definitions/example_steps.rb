Given /^a working test setup$/ do
  @searcher = GoogleSearch.new
end

When /^I google for 'pry video josh'$/ do
  @result = @searcher.search_for 'pry video josh'
end

Then /^'(.*?)' should be one of the results$/ do |expected_entry|
  begin
    assert_include @result, expected_entry
  ensure
    @searcher.close
  end
end
