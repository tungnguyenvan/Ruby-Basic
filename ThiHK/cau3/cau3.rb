
class Animal
  attr_accessor :name, :pri
  def initialize(name, pri)
    @name, @pri = name, pri
  end
  def to_s
    "ten: #{@name} \t #{@pri}"
  end
end

class Cat < Animal
  def initialize(name, pri)
    super(name, pri)
  end
end

class Dog < Animal
  def initialize(name, pri)
    super(name, pri)
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
  name = line.strip if index == 2
  pri = line.to_i if index ==3

  if index == 3
    index = 0
    ani = Cat.new(name, pri) if type ==1
    ani = Dog.new(name, pri) if type == 2
    animal.push ani
  end
end

puts "----- cau a: ------"
puts "sap xep mang cac con vat theo gia tang dan: "
animal.sort! {|a, b| a.pri <=> b.pri}
animal.each do |ani|
  puts ani.to_s
end
puts "------------------------------------------------"

puts "------ cau b: -----"
puts "tim con meo gia dat nhat: "
# arr_cat = animal.collect {|ani| ani if ani.instance_of? Cat}
cat =  animal.compact.max_by {|cat| cat.pri}
puts cat
puts "------------------------------------------------"


puts "------cau c----------"
puts "hien thi con cho co gia re nhat: "
# arr_dog = animal.collect!{ |animal| animal if animal.instance_of? Dog}
dog = animal.compact.min_by {|dog| dog.pri}
puts dog
puts "------------------------------------------------"

puts "----- cau d: -----"
puts "hien thi so luong con vat moi loai: "
num_cat = 0
num_dog = 0
animal.each do |ani|
  num_cat += 1 if ani.class == Cat
  num_dog += 1 if ani.class == Dog
end

puts "cho: #{num_dog} --- meo: #{num_cat}"
