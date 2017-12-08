#1.text 폴더로 들어간다.
Dir.chdir("")
#2.파일을 만든다.

#3.
f = File.new("testfile", "r")
f = File.new("newfile",  "w+")
f = File.new("newfile", File::CREAT|File::TRUNC|File::RDWR, 0644)
