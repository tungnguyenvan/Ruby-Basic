
def check x
	for i in 2..(x-1) do
		if x % i == 0
			return false
			break
		end
		return true
	end
end

f = File.read("in.txt").to_i

count = 0
n = 100
puts check n

while n >= 100
	if count < f
		puts "#{n} la so nguyen to" if check(n)
		n += 1
		count += 1
	end
end