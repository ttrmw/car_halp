module Scrapers
  class AutotraderScraper < AbstractScraper
    def process
      @document = Nokogiri::HTML(@response.body)

      {
        advert_title: @document.css('.pricetitle__mainHeading').text.strip,
        advert_price: @document.css('.priceTitle__price.gui-advert-price').text.strip,
      }

    end
  end
end
