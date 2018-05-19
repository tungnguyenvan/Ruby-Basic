def Polimon x
	temp = x
	nghich_dao = 0

	while x > 0
		mod = x % 10
		x = x / 10
		nghich_dao = nghich_dao * 10 + mod
	end

	return true if nghich_dao == temp else return false
end


f = File.read("in2.txt")

arr = Array.new

f.each_line {|line| arr = line.split ' '}

arr.map! {|x| x.to_i}

puts "----------ket qua---------"
puts "sap xep mang theo thu tu tang dan"
arr.sort! {|a,b| a <=> b}
puts arr
puts "------------------------"

#b sap xep mang theo thu tu giam dan
puts "----------ket qua-------------"
puts "sap xep theo thu tu giam dan"
arr.sort! {|a,b| b <=> a}
puts arr
puts "-----------------------"

puts "------------------------------"
puts "----------so Polinom------------"
count = 1

arr.each do |x|
	if Polimon(x)
		count += 1
	end
end

puts "co #{count} so polonom"

