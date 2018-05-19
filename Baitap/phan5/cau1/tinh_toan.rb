a = 0
b = 0

f = File.open("in.txt", "r")
f.each_line do |line|
  so = line.split(" ")
  a = so[0]
  b = so[1]
end

a = a.to_i
b = b.to_i

tong = a+b
hieu = a-b
tich = a*b
thuong = a/b

puts "tong cua 2 so a,b : #{tong}"
puts "hieu cua 2 so a,b : #{hieu}"
puts "tich cua 2 so a,b : #{tich}"
puts "thuong cua 2 so a,b: #{thuong}"
