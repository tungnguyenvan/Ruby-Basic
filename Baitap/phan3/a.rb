class Cat
	attr_accessor :name, :pri

	def initialize(name = "", pri = 0)
		@name = name
		@pri = pri
	end
	def to_s
		"ten: #{name} --- #{pri}"
	end
end

class Dog
	attr_accessor :name, :pri

	def initialize(name = "", pri = 0)
		@name = name
		@pri = pri
	end
	def to_s
		"ten: #{name} --- #{pri}"
	end
end


file = File.open("in.txt", "r")

index = 0
type = 0
name = ""
pri = 0
animal = Array.new

file.each_line do |line|
	index += 1

	type = line.to_i if index == 1
	name = line if index == 2
	pri = line.to_i if index ==3

	if index == 3
		index = 0
		cat = Cat.new(name, pri) if type ==1
		dog = Dog.new(name, pri) if type == 2
		animal.push cat if type == 1
		animal.push dog if type == 2
	end
end

puts "-------cau a-------"

animal.sort! {|a, b| a.pri <=> b.pri}

animal.each do |ani|
	puts ani
end
puts "-------------------"


puts "------cau b-------"
arr_cat = Array.new
animal.each do |ani|
	arr_cat.push ani if ani.class == Cat
end

arr_cat.sort! {|a,b| b.pri <=> a.pri}
puts arr_cat[0]
puts "-------------------"

puts "------cau c----------"
arr_dog = Array.new
animal.each do |ani|
	arr_dog.push ani if ani.class == Dog
end

arr_dog.sort! {|a,b| a.pri <=> b.pri}
puts arr_dog[0]