# encoding: utf-8
require 'rubygems'
require 'mechanize'

agent = Mechanize.new
agent.open_timeout = 15  
agent.user_agent = 'User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'

page = agent.get('https://www.lovelivewiki.com/w/EventList');

p "waiting................."   

resultFile = File.new("searchResult3.txt", "w+")
page.search("//tr//td").each do |td|
  resultFile.syswrite("#{td.content}\n")
  p td.content
end
resultFile.close

