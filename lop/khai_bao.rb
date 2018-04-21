class Nguoi
  attr_accessor :ten, :ho, :sothich, :website

  #ham khoi tao
  def initialize(ten = "Khanh Linh", ho = "Nguyen Thi")
    @ten = ten
    @ho = ho
  end
  #end ham khoi tao

end

tung = Nguoi.new("tung") #khi khong truyen doi so thi se lay gia tri mac dinh
# tung.ten = "tung"
# tung.ho = "nguyen van"
# tung.sothich = "code"
# tung.website = "tung.com"

 puts tung.ten
 puts tung.ho

