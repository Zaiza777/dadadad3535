require 'open-uri'
require 'nokogiri'

url = "https://www.socks-proxy.net/"
html = open(url)
xlaa = Nokogiri::HTML(html)

doc = xlaa.css('.table-responsive tbody')
shrek = doc.css("td")
shrek.each do |item|
	puts item.text.gsub(/([0-9]){1,3}.([0-9]){1,3}.([0-9]){1,3}.([0-9]){1,3}/)
end