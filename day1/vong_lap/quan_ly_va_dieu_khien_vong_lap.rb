for i in 0..10
  next if i == 2 #next se bo qua cac cu phap ben duoi no
  puts "gia tri cua i = #{i}"
end

puts "--------"
i = 1
while i <=10
  break if i == 5
  puts "gia tri cua i = #{i}"
  i += 1
end
