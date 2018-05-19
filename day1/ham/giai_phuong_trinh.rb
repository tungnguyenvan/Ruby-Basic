#ham trong ruby
#phuong trinh a + x = b



def phuong_trinh(a = 0, b = 0) #0 la gia tri mac dinh ma ta dinh truoc
  return "giai phuong trinh #{a} + x = #{b} || ta duoc ket qua: x = #{b-a}"
end

puts phuong_trinh(10,30)
