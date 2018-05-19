class Cat
	attr_accessor :name, :pri

	def initialize(name, pri)
		@name = name
		@pri = pri
	end

	def to_s
		"ten: #{name} --- gia: #{pri}" 
	end
end

class Dog 
	attr_accessor :name, :pri

	def initialize(name, pri)
		@name = name
		@pri = pri
	end

	def to_s
		"ten: #{name} --- gia: #{pri}" 
	end
end

f = File.read("in3.txt")

index = 0
type = 0
name = ""
pri = 0
animal = Array.new

f.each_line do |line|
	index += 1

	type = line.to_i if index == 1
	name = line if index == 2
	pri = line.to_i if index == 3
	if index == 3
		index = 0
		cat = Cat.new(name, pri) if type == 1
		dog = Dog.new(name, pri) if type == 2
		animal.push cat if type == 1
		animal.push dog if type == 2
	end
end

puts "------ket qua---------"
puts "\tsap xep con vat theo gia tang dan"
animal.sort! { |a, b| a.pri <=> b.pri }
puts animal
puts "-----------------------"

puts "---------------------------"
arr_cat = Array.new
animal.each{|ani| arr_cat.push ani if ani.class == Cat}
puts "--------ket qua-----------"
puts "con meo co gia dat nhat: "
puts arr_cat.sort!{|a,b| b.pri <=> a.pri}[0]

puts "-----------------------"
puts "-------ket qua---------"
puts "o=con meo co gia re nhat"
puts arr_cat[(arr_cat.length - 1)]