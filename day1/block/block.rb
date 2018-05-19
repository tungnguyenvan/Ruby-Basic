# {puts "xin chao day la block nam trong dau ngoac nhon {}"}

# do
#   puts "xin chao day la blcok nam trong do va end"
# end

def chickenrain(&block)
  if block_given?
    block.call
  else
      puts "chua co block"
  end
end


#block2
def checkenrain2

  if block_given?
    yield #chay block khong can truyen tham so blck vao
  else
    puts "khong co block"
  end

end

def chickenrain3(name)

  if block_given?
    yield name
  else
    puts "khong co block"
  end

end




chickenrain{puts "day la block "} #neu chi goi method thi no se bao loi
puts "--------------------"
chickenrain
puts "----------------"

checkenrain2{puts "hehehehe"}

puts "-----------------"
chickenrain3 ("nguyen van tung") {|name| puts "xin chao #{name}"}
