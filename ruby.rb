require 'open-uri'
require 'nokogiri'

url =  'https://www.socks-proxy.net/'

html = open(url)
xlaa = Nokogiri::HTML(html)

doc = xlaa.css('.table-responsive tbody')

shrek = doc.css('td')
puts shrek.remove_class