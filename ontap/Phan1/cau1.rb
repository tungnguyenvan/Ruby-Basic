def Polinom(x)
  if (x%10) == (x/100)
    return true
  else
    return false
  end
end

i = 100
count = 0

sum = File.read "in.txt"
sum = sum.to_i

puts sum
while i >= 100
  if Polinom(i)
    if count == sum
      break
    else
      count += 1
      puts "#{i}"
      i += 1
    end
  else
    i += 1
  end
end
