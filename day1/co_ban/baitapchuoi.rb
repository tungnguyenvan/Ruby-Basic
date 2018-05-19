puts "---Bài tập Chuỗi trong Ruby---"
puts "hãy nhập tên của bạn"
name = gets.chomp
puts  "hãy nhập email của bạn"
email = gets.chomp
name.capitalize!

puts "bạn chưa nhập tên, và email của bạn là #{email}" if name.empty?

puts "Tên của bạn là #{name} và địa chỉ email của bạn là #{email}" if email.include?("@")
