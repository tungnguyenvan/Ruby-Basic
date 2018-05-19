def count_chan x
	num = 0

	x.each do |int|
		num += 1 if (int%2)==0
	end
	return num
end

arr_num = Array.new
f = File.open("in.txt", "r")
f.each_line do |line|
	arr_num = line.split(" ")
end
arr_int = Array.new
arr_num.each do |int|
	arr_int.push int.to_i
end

arr_int.sort! {|a, b| b <=> a}
puts "phan tu lon nhat trong mang la: #{arr_int[0]}"

count = count_chan arr_int

puts "so phan tu chan trong mang la: #{count}"