arr_number = Array.new

f = File.open("in.txt", "r")
f.each_line do |line|
  arr_number = line.split(" ")
end

arr = Array.new
arr_number.each do |number|
  number = number.to_i
  arr.push number if number%2 == 0
end

arr.each do |number|
  factorial = 1
  for i in 1..number
    factorial *= i
  end
  puts "#{number} : #{factorial}"
end
