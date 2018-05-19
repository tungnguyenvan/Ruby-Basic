def Polinom x
  number = x
  so_du = 0
  so_sanh = 0

  while x > 0 do
    so_du = x % 10
    so_sanh = so_sanh * 10 + so_du
    x = x/10
  end
  if number == so_sanh
    return true
  else
    return false
  end
end


arr = Array.new

f = File.open("in.txt", "r")
f.each_line do |line|
  arr = line.split(" ")
end

arr_num = Array.new

arr.each do |val|
  arr_num.push val.to_i
end

puts "----cau a: -------"
puts "sap xep mang theo vi tri tang dan: "
arr_num.sort! {|a, b| a <=> b}
arr_num.each do |val|
  puts val
end
puts "------------------------------------------------"

puts "------cau b: ------"
puts "sap xep mang theo thu tu giam dan: "
arr_num.sort! {|a, b| b <=> a}
arr_num.each do |val|
  puts val
end
puts "------------------------------------------------"

puts "------ cau c: ------"
puts "dem trong mang co bao nhieu so polinom"
count_polinom = 0
arr_num.each do |num|
  count_polinom += 1 if Polinom num
end

puts "co #{count_polinom} so polinom trong mang"
