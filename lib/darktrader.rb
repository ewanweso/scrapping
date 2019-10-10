require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

a = []

x = page.css('tbody td.text-left.col-symbol').take(5)
x.map {|value| a << value.text}

b = []
y = page.css('tbody a.price').take(5)
y.map {|value2| b << value2.text}


h = Hash[a.zip(b)]

puts h
