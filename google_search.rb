require 'safariwatir'

class GoogleSearch
  def initialize
    @browser = Watir::Safari.new
  end

  def search_for search_term
    @browser.goto 'http://google.de/'
    @browser.text_field( :name, 'q' ).set search_term
    @browser.button( :id, 'gbqfb' ).click
    @browser.ol( :id, 'rso' ).links.map(&:text)
  end
end


# gs.new
# gs = GoogleSearch.new
# gs.search_for 'agile testing looking forward Potsdam'
# method gs.search_for
# show-method gs.search_for
# cd gs
# search_for 'pry video'