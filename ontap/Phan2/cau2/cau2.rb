f = File.read("in.txt")

arr = Array.new()

f.each_line {|line| arr = line.split " "}
arr.map! {|a| a.to_i}


puts "------ket qua----------"
puts "gia tri cao nha la #{arr.sort {|a,b| b <=> a}[0]}"

count_chan = 0
arr.each{ |a| count_chan += 1 if a % 2 ==0 }
puts "---------key qua-----------"
puts "co #{count_chan} phan tu chan trong mang"

#sap xem theo lon den nho
arr.sort!{|a,b| a <=> b}
count  = 1
max = 0
num = 0
num = 0
puts "-----ket qua-------"
arr.each do |x|
	if num < x
		num = x
		if max < count
			max = count	
		end
		count = 1
	elsif num == x
		count += 1
	end
end

puts "co #{max} phan tu duoc lap lai trong mang"