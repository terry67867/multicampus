#0.file.rb의 위치는 rubyclass폴더 안에 있다.
#1.text 폴더로 들어간다.
Dir.chdir("text")
#2.파일을 만든다.
#f = File.new("newfile.txt","w+")
#파일을 열어서 입력한다.
20.times do |i|
  i+=1
  File.open("newfile#{i}.txt","w+") do |file|
      file.write("hello world")
    end
end
#3.
=begin
f = File.new("testfile", "r")
f = File.new("newfile",  "w+")
f = File.new("newfile", File::CREAT|File::TRUNC|File::RDWR, 0644)
=end
