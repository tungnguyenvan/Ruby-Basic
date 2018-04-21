m = [1,2,3,4,5]
n = [10,20,30,40,50]

def double_block(x)
  if block_given?

    yield x*2

  end
end

puts "mang m"
puts m.map{ |attr| double_block(attr) {|x| "#{x}"}}

puts "mang n"
puts n.map { |attr| double_block(attr){|x| "#{x}"}  }

# do "{ |attr| double_block(attr){|x| "#{x}"}  }" lap lai qua nhieu lan nen
#ta dung procs de tranh viec do

double_procs = Proc.new do |x|
  x*2
end

puts "---------------"
puts "mang m"
puts m.map(&double_procs)


#lambda cung tuong tu nhu proc
double_lambda = lambda do |x|
  x*2
end

puts "------------"
puts "mang n"
puts n.map(&double_lambda)
