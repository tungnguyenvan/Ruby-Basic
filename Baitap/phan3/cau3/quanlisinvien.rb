class Sinhvien
	attr_accessor :ma_sv, :ten_sv, :toan, :ly, :hoa

	def initialize(ma_sv, ten_sv, toan, ly, hoa)
		@ma_sv = ma_sv
		@ten_sv = ten_sv
		@toan = toan
		@ly = ly
		@hoa = hoa
	end

	def to_s
		"Ma Sv: #{ma_sv} -- Ten: #{ten_sv} -- |Diem| Toan: #{toan} - Ly: #{ly} - Hoa: #{hoa}"
	end
end

f = File.open("in.txt", "r")
num_line = 0
ma_sv = 0
ten_sv = ""
toan = 0
ly = 0
hoa = 0

sinhviens = Array.new

f.each_line do |line|
	num_line += 1
	ma_sv	 = line if num_line == 1
	ten_sv	 = line if num_line == 2
	toan	 = line if num_line == 3
	ly		 = line if num_line == 4
	hoa		 = line if num_line == 5

	if num_line == 5
	 	sv = Sinhvien.new(ma_sv, ten_sv, toan, ly, hoa)
	 	sinhviens.push sv
	 	num_line = 0
	 end
end

sinhviens.each do |sv|
	puts sv.to_s
end

puts "-----sort--------"
sinhviens.sort! {|a, b| a.ten_sv <=> b.ten_sv}
sinhviens.each do |sv|
  puts sv.to_s
end

puts "------diem tb----------"
sinhviens.each do |sv|
  toan = sv.toan.to_i
  ly   = sv.ly.to_i
  hoa  = sv.hoa.to_i

  dtb = (toan + ly + hoa) / 3
  puts "#{sv.ten_sv} : #{dtb}"
end

puts "-------sort siem tb---------"
sinhviens.sort! {|a, b|
  dtb_a = (a.toan.to_i + a.ly.to_i + a.hoa.to_i) / 3
  dtb_b = (b.toan.to_i + b.ly.to_i + b.hoa.to_i) / 3

  dtb_b <=> dtb_a
}

sinhviens.each do |sv|
  toan = sv.toan.to_i
  ly   = sv.ly.to_i
  hoa  = sv.hoa.to_i

  dtb = (toan + ly + hoa) / 3
  puts "#{sv.ten_sv} : #{dtb}"
end
