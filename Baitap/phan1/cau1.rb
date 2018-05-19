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

n = 0
f = File.open("in.txt", "r")
f.each_line do |line|
	n = line
end

n = n.to_i
u = 100
i = 1

while u >= 100
	if i <= n
		if Polinom(u)
			puts "#{u} la so Polinom"
			i += 1
		end
		u += 1
	else
		break
	end
end