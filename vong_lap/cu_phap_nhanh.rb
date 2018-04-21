#lap 1 cau truc theo so lan cho truoc
5.times {puts "ruby"}

puts "------"
#lap tu 1 so den 1 so
1.upto(5) {puts "ruby"}

puts "------"
#cau truc giong for nhung ngan hon
(2..8).each { |i| puts "gia tri cua i la #{i}"}

#vong lap khong doi so
loop do
  puts "nhap mat khau"
  password = gets.chomp
  if password == "aaa"
    puts "ban da nhap dung mat khau"
    break
  end
end
