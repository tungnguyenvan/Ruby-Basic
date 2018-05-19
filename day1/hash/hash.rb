h = Hash.new #cach 1
hh = {"name" => "Nguyen van tung"} #cach 2
puts hh



#them gia tri cho hash
hh["email"] = "nguyenvantung@gmail.com"
hh["website"] = "nguyen.van.tung.vn"
puts hh

#lay key o trong hash
puts hh.keys #tra ve 1 mang

#lay value trong hash
puts hh.values #tra ve 1 mang gom cac phan tu

#lay value cuar 1 key trong hash
puts hh["name"] #neu key khong co trong hash thi ket qua tra ve la nil

#lay key chua value
puts hh.key("nguyen.van.tung.vn")

puts "---------------"
#tim kiem trong hash
puts hh.assoc("website") #tra ve 1 cap gia tri key-value

#xoa hash : hh.clear

puts "---------------"
#xoa cap gia tri key-value
hh.delete("website")
puts hh #{"name"=>"Nguyen van tung", "email"=>"nguyenvantung@gmail.com"}
#da xoa cap key-value cua website

puts "---------------"
#xoa hash theo dieu kien
hh.delete_if {|key, value| key == "name"}
puts hh #{"email"=>"nguyenvantung@gmail.com"} da xoa cap gia tri key-value cua name

puts "------------"
#truy cap vao hash
hh.each {|key, value| puts " Key: #{key}  :  value: #{value} "}
# Key: email  :  value: nguyenvantung@gmail.com


puts "------------"
#kiem tra hash co rong hay khong
puts hh.empty? #false vi trong hash van con gia tri

puts "------------"
#tra ve true false kiem tra xem co ton tai gia tri bang value hay khong
puts hh.has_value?("nguyenvantung@gmail.com") #true vi co gia tri value = "nguyenvantung@gmail.com"
puts hh.has_value?("nguyen van tung") #false vi khong co gia tri value = "nguyen van tung"


 puts "------------"
 #tra ve true false kiem tra xem co ton tai gia tri bang key hay khong
 puts hh.has_key?("email") #true vi khong co key = "email"
 puts hh.has_key?("name") #false vi khong co key = "name"


puts "------------"
#merge hash lai, neu key bi trung lap thi gia tri se duoc xac dinh trong other_hash
h1 = {"a" => 100, "b" => 200}
h2 = {"b" => 254 , "c" => 300}
puts h1.merge(h2)


puts "------------"
#select: tra ve 1 hash moi gom cac cap thoa man(block tra ve true)
h = {"a" => 100, "b" => 200, "c" => 300}
puts h.select { |key, value| key > "a"} #{"b"=>200, "c"=>300}
puts h.select { |key, value| value > 200} #{"c"=>300}


puts "------------"
#loai bo cap key-value dau tien trong hash
puts h.shift #{"a" => 100}
puts h #{"b"=>200, "c"=>300}

puts "------------"
#lay ve so cap key-value trong hash
puts h.length #2

puts "-----------"
#chuyen doi hash sang array
h = {"c" => 300, "a" => 100, "d" => 400}
puts h.to_a
