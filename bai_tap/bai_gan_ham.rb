def chanle(a = null)

  if (a % 2) == 0
    return 1
  else
    return 0
  end
end

puts "ban nhap vao 1 so"

so = gets.chomp.to_i

if chanle(so) == 1
  puts "so ban vua nhap vao la 1 so chan"
elsif chanle(so) == 0
  puts "so ban vua nhap vao la 1 so le"
elsif chanle(so) == -1
  puts "ban can nhap vao 1 so"
end
