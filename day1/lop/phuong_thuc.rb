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

end

nguoi =  Nguoi.new("tung", "nguyen van", "code", "tung.com")

puts nguoi.ten
puts nguoi.ho
puts nguoi.sothich
puts nguoi.website

puts "---------------"
#goi function
nguoi.thucday
puts nguoi.nangluong
