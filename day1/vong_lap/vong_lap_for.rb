array = [0,100,2,3,4,5,6,7,8,9,10]

for i in array
  puts i
end

#chay voi so lan lap truoc
for i in 0..5 do
  puts "gia tri cua i la: #{i}"
end

puts "-----"
#su dung vong lap o ben trong vong lap
for i in 0..5 do
  puts "gia tri cua i la: #{i}"
  for j in 5..10 do
    puts "gia tri cua j la: #{j}"
  end
end
