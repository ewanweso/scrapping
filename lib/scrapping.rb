require 'rubygems'
reguire 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("index.html"))
puts page.class   # => Nokogiri::HTML::Document
