#coding: utf-8
require 'net/http'
require 'open-uri'
require 'rubygems'
require 'nokogiri'

=begin
Net::HTTP.version_1_2
Net::HTTP.start("www.baidu.com",80) { |http|
  response = http.get('/index.html')
  puts response.body
}

h = Net::HTTP.get("www.raw.githubusercontent.com/996icu/996.ICU/master/blacklist/README.md", '/index.html')
resp,data = h.get("/")
puts h
puts resp
puts data
=end
=begin
doc = Nokogiri::HTML(open("https://space.bilibili.com/65988295"))

doc.css('nav ul.menu li a', '//article//h2').each do |link|
  puts link.content
end

doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
  puts link.content
end

doc.search('nav ul.menu li a', '//article//h2').each do |link|
  puts link.content
end

url = "https://neets.cc/"
page = Nokogiri::HTML(open(url))
page.encoding = "bg2312"
puts page.class
puts page.css("div")[0].text

page = Nokogiri::HTML(open("http://en.wikipedia.org/"))
puts page.class
puts page.css("title")[0].name
puts page.css("title")[0].text
=end

=begin
url = "https://raw.githubusercontent.com/996icu/996.ICU/master/blacklist/README.md"
html = open(url).read
html.force_encoding("gbk")
html.encode!("utf-8")

page = Nokogiri::HTML(open(url), nil, "UTF-8")
puts page.class
=end
page = Nokogiri::HTML(open("https://raw.githubusercontent.com/996icu/996.ICU/master/blacklist/README.md"),nil, "UTF-8")
puts page.class

#links = page.css("body")
#puts page.css("body")[0].text
pages = page.css("body")[0].text
puts pages
pages.each_line do |line|
  if line[0] == "|"
    puts line[1..2]
  end
end
#puts links[0].text
#puts links[0]["href"]
=begin
news_links = page.css("body#references")
news_links.each{|link| puts "#{link.text}\t#{link['href']}"}
=end