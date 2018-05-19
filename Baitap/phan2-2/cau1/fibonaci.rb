def fibonaci count
	arr_fibonaci = Array.new
	first = 1
	secon = 1
	num = 0
	while num <= count
		arr_fibonaci.push first + secon
		num += 1
		c = secon
		secon += first
		first = c
	end
	return arr_fibonaci
end

f = 0
file = File.open("in.txt", "r")
file.each_line do |a|
	f = a.to_i
end

arr_fibonaci = fibonaci f
arr_fibonaci.each do |a|
	puts a
end