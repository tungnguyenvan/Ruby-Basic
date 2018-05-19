
def Polinom(x)
	number = x
	so_du = 0
	so_sanh = 0

	while x > 0 do
		so_du = x%10
		so_sanh = so_sanh*10 + so_du
		x = x/10
	end
	if number == so_sanh
		return true
	else
		return false
	end
end




arr  = [9,32,765,12,53, 101, 202]
# sap xep trong mang tang dan
arr.sort! {|a, b| a<=>b}
arr.each do |val|
	puts val
end
#end sap xep trong mang tang dan
puts "===================="
#sap xep mang giam dan
arr.sort! {|a,b| b<=>a}
arr.each do |val|
	puts val
end
#end sap xep mang giam dan
puts "================"
num_polinom = 0
arr.each do |val|
	if Polinom(val)
		num_polinom += 1
	end
end
puts "mang co #{num_polinom} so polinom"
