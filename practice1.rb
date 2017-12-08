#gem을 사용하기 위해 불러온다.
#요청을 보내기 위한 httparty
require 'httparty'
#원하는 정보를 가져오기 위한 nokogiri
require 'nokogiri'

#1. 블로그 주소를 url에 저장한다.
url = "http://decode.tistory.com/"
#2. url을 통해서 요청한다.
response = HTTParty.get(url)
#3. 가져온 문서를 nokogiri형식으로 저장
doc = Nokogiri::HTML(response)
#4. 문서에서 css중 ID가 KOSPI_now 인 것을 kospi 변수에 저장
#css를 가져오기 위해서 크롬에서 copy selector
sentence = doc.css("#content")
puts sentence.class
#puts sentence.text.to_s
puts sentence.text.include?"아두이노 나노"
#article = kospi.split(" ")
# puts article
#article = kospi.include("제보")
#5. kospi에 저장된 것 중에서 태그 안에 있는 텍스트를 출력한다.
#puts kospi.text
