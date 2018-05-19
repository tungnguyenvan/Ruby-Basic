x = 0

case x

#cach viet thong thuong
when 0
  puts "gia tri cua x = 0"
when 5
  puts "gia tri cua x = 5"
when 10
  puts "gia tri cua x =10"
else
  puts "khong biet"
end

#cach viet theo khoang gia tri
case x
when 0..4 #bieu dien gia tri tu 0-4
  puts "gia tri cua x = 0 -> 4"
when 5..9
  puts "gia tri cua x = 5 -> 9"
when 10
  puts "gia tri cua x =10"
else
  puts "khong biet"
end

#hoac viet theo cach sau
case
when x >= 0 && x <= 4
  puts "gia tri cua x =0 -> 4"
end


