a = 10
b = 20
c = 30

if a ==10 && b ==20 && c==30
  puts "cau lenh dung"
else
  puts "cau lenh sai"
end

puts "-----------------"

x = 10
if (x >= 10 && x <= 25) || x < -50
  puts "x thoa man dieu kien cua de bai"
else
  puts "x khong thoa man dieu kien cua de bai"
end

arr = [1,2,3,4,5,6,7,8,9,10]
arr.each {|a| puts "thoa man" if a == x}
