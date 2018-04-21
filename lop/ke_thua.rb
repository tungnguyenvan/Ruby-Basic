class Nguoi
  attr_accessor :ten, :ho, :sothich, :website, :nangluong

  #ham khoi tao
  def initialize(ten, ho, sothich, website)
    @ten = ten
    @ho = ho
    @sothich = sothich
    @website = website
  end
  #end ham khoi tao

  #tao function trong object
  def thucday
    @nangluong = 100
  end
  #end tao function trong object

  def an
    @nangluong += 5
  end

  def lamviec
    @nangluong -= 5
  end

  def to_s
    "xin chao cac ban day la phuong thuc to string"
  end

end

#ke thua
class GiaoVien < Nguoi #lop GiaoVien thua ke cua lop Nguoi
  attr_accessor :chuyennganh
end
#end ke thua

giaovien =  GiaoVien.new("tung", "nguyen van", "code", "tung.com")
giaovien.chuyennganh = "code"

puts giaovien.ten
puts giaovien.chuyennganh

puts giaovien.to_s

