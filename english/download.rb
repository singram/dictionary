require 'open-uri'
require 'nokogiri'
require 'json'
require 'pp'

dictionary = {}
('a'..'z').each do |letter|
  pp "Reading definitions for #{letter}"
  doc =  Nokogiri::HTML(open("http://www.mso.anu.edu.au/%7Eralph/OPTED/v003/wb1913_#{letter}.html"))
  doc.search('p').each do |definition|
    word = definition.search('b').first.content
    definition = definition.content.gsub(/^.*?\)\s*/, '')
    dictionary[word] ||= []
    dictionary[word] << definition
  end
end

pp "Writing dictionary"
File.open("dictionary/english.json","w") do |f|
  f.write(JSON.pretty_generate(dictionary))
end

words = dictionary.keys.uniq.sort.select
pp "Writing words"
File.open("words/english.txt","w") do |f|
  words.each { |element| f.puts(element) }
end
