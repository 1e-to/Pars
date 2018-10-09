require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D0%BD%D0%B2%D0%B5%D1%80'))

puts "### Search for nodes by css"
doc.css('.mw-body .mw-body-content .mw-content-ltr .infobox .infobox td, .infobox th').each do |link|
  puts link.content
end

