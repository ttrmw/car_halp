require "nokogiri"
require "uri"
require "net/https"

module Scrapers
  class AbstractScraper
    attr_reader :response

    def initialize(uri, options={})
      uri = URI.parse(uri)
      @response = Net::HTTP.new(
        uri.host,
        uri.port
      ).request(
        Net::HTTP::Get.new(uri.request_uri)
      )
    end

    def process
      raise AbstractScraperError, 'process not implemented in abstract class'
    end
  end

  class AbstractScraperError < StandardError; end
end
