require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/%27))

pageAnnuraireCallen = Nokogiri::HTML(open('http://annuaire-des-mairies.com/40/callen.html%27'))

get_townhall_email = pageAnnuraireCallen.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')

puts get_townhall_email
