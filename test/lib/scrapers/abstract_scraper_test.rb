require 'test_helper'
require 'scrapers/abstract_scraper.rb'

class AbstractScraperTest < ActiveSupport::TestCase
  test 'the truth' do
    #tests that depend on internet connectivity aren't very good tests
    response = Scrapers::AbstractScraper.new('http://google.com').response
    assert_not response.body.empty?
  end
end
