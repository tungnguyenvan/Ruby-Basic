loop do
  puts "moi ban chon:"
  puts "\t1. Bang cuu chuong"
  puts "\t2. Tinh tong cua day so"
  puts "\t3. Ve tam giac vuong"
  puts "\t4. Ve tam giac can"
  puts "\t5. thoat"

  index = gets.chomp.to_i

  case
  when index == 1

    #ham in bang cuu chuong
    puts "chuong trinh se in ra bang cuu chuong cua x. moi ban nhap x (1 < x < 9)"
    x = gets.chomp.to_i
    puts "---------ket qua--------"
    for i in 1..10
      puts "#{x} x #{i} = #{x*i}"
    end
    puts "------------------------"
    puts "ban hay nhap \"y\" de quay lai menu, hoac nhap ky tu khac de thoat"
    result = gets.chomp
    if result == "y"
      next
    else break
    end
    #end ham in bang cuu chuong

  when index == 2

    #ham tinh tong cua day so
    puts "chuong trinh se tinh tong cac so nguyen tu 0 den x, moi ban nhap x (x > 0)"
    tong = 0
    x = gets.chomp.to_i

    for i in 0..x do
      tong += i
    end

    puts "------ket qua-----------"
    puts "tong cac so nguyen tu 0 den #{x} la: #{tong}"
    puts "-------------------------"

    puts "ban hay nhap \"y\" de quay lai menu, hoac nhap ky tu khac de thoat"
    result = gets.chomp
    if result == "y"
      next
    else break
    end
    #end ham tinh tong cua day so

  when index == 3

    #ham ve tam giac vuong
    dot = "*"
    puts "-----ket qua-----"

    for i in 1..10 do
      puts dot*i
    end

    puts "-----------------"

    puts "ban hay nhap \"y\" de quay lai menu, hoac nhap ky tu khac de thoat"
    result = gets.chomp
    if result == "y"
      next
    else break
    end
    #end ham ve tam giac vuong

  when index == 4

    #ham ve tam gia can
    cout_space = 5
    cout_dot = 1
    dot = "*"
    space = " "

    puts "----ket qua----"
    while cout_space > 0
      puts space*cout_space + dot*cout_dot
      cout_space -= 1
      cout_dot += 2
    end
    puts "---------------"

    puts "ban hay nhap \"y\" de quay lai menu, hoac nhap ky tu khac de thoat"
    result = gets.chomp
    if result == "y"
      next
    else break
    end
    #end ham ve tam giac can

  when index == 5
    break
  end
end
