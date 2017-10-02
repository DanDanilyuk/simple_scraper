require("bundler/setup")
Bundler.require(:default)
require 'nokogiri'
require 'open-uri'

# html_data = open('http://web.archive.org/web/20090220003702/http://www.sitepoint.com/').read
# html_data = open('https://www.reddit.com/').read
#
# nokogiri_object = Nokogiri::HTML(html_data)
# using xPath
# tagcloud_elements = nokogiri_object.xpath("//ul[@class='tagcloud']/li/a")
# reddit_top_posts = nokogiri_object.xpath("//p[@class='title']/a")
# using css selectors
# tagcloud_elements = nokogiri_object.css("ul.tagcloud > li > a")
# reddit_top_posts.each do |post|
#   puts post.text
  # to get the attribute value of href
  # puts tagcloud_element['href']
# end

get('/') do
  if @top_posts
    @top_posts
  end
  erb(:reddit)
end

post('/reddit') do
  reddit_nokogiri_object = Nokogiri::HTML(open('https://www.reddit.com/').read)
  @top_posts = reddit_nokogiri_object.xpath("//p[@class='title']/a")
  erb(:reddit)
end
