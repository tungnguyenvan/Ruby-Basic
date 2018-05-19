puts "------Day Fibonacci-------"

index = File.read("in.txt").to_i

arr_fibonacci = [1, 1]

for i in 2...10 do

	first = arr_fibonacci[i - 2]
	last = arr_fibonacci[i - 1]
	arr_fibonacci.push(first + last)
end
puts arr_fibonacci