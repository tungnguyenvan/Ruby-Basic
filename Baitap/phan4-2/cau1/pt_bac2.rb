puts "ban nhap vao so a"
a = gets.chomp.to_i
puts "ban nhap vao so b"
b = gets.chomp.to_i
puts "bam can nhap vao so c"
c = gets.chomp.to_i

puts "day khong phai la phuong trinh bac 2" if a == 0

delta = (b*b)-(4*a*c)
if delta > 0
	x1 = (-b + sqrt(delta) / (2*a))
	x2 = (-b - sqrt(delta) / (2*a))

	puts "x1= #{x1} va x2= #{x2}"
else
	puts "phuong trinh vo nghiem"
end
if delta == 0
	x = -b/2*a
	puts "phuong trinh co 1 nghiem kep: #{x}"
end