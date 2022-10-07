# HỌ và tên: Trương Việt Hoàng
# Mã sinh viên: 1911505310220
class PhuongTien220
    attr_accessor :id220, :hangsx220, :namsx220, :dongxe220, :giaban220, :bienso220, :mauxe220
    def initialize(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220)
        @id220 = id220
        @hangsx220 = hangsx220
        @namsx220 = namsx220
        @dongxe220 = dongxe220
        @giaban220 = giaban220
        @bienso220 = bienso220
        @mauxe220 = mauxe220
    end

    def ThongTin220()
        puts "ID: #{@id220}"
        puts "Hãng sản xuất: #{@hangsx220}"
        puts "Năm sản xuất: #{@namsx220}"
        puts "Dòng xe: #{@dongxe220}"
        puts "Giá bán : #{@giaban220}"
        puts "Biển số xe: #{@bienso220}"
        puts "Màu xe: #{@mauxe220}"
    end
end

class Oto220 < PhuongTien220
    attr_accessor :id220, :hangsx220, :namsx220, :dongxe220, :giaban220, :bienso220, :mauxe220, :sochongoi220, :kieudongco220, :nhienlieu220, :sotuikhi220, :ngaydangkiem220
    def initialize(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220, sochongoi220, kieudongco220, nhienlieu220, sotuikhi220, ngaydangkiem220)
        super(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220)
        @sochongoi220 = sochongoi220
        @kieudongco220 = kieudongco220
        @nhienlieu220 = nhienlieu220
        @sotuikhi220 = sotuikhi220
        @sochongoi220 = sochongoi220
        @ngaydangkiem220 = ngaydangkiem220
    end

    def ThongTin220()
        super()
        puts "Số chỗ ngồi: #{@sochongoi220}"
        puts "Kiểu động cơ: #{@kieudongco220}"
        puts "Nhiên liệu: #{@nhienlieu220}"
        puts "Số túi khí : #{@sotuikhi220}"
        puts "Số chỗ ngồi: #{@sochongoi220}"
        puts "Ngày đăng kiểm: #{@ngaydangkiem220}"
    end
end

class XeMay220 < PhuongTien220
    attr_accessor :id220, :hangsx220, :namsx220, :dongxe220, :giaban220, :bienso220, :mauxe220, :congsuat220, :dungtich220
    def initialize(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220, congsuat220, dungtich220)
        super(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220)
        @congsuat220 = congsuat220
        @dungtich220 = dungtich220
    end

    def ThongTin220()
        super()
        puts "Công suất: #{@congsuat220}"
        puts "Dung tích bình xăng: #{@dungtich220}"
    end
end

class Xetai220 < PhuongTien220
    attr_accessor :id220, :hangsx220, :namsx220, :dongxe220, :giaban220, :bienso220, :mauxe220, :trongtai220
    def initialize(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220, trongtai220)
        super(id220, hangsx220, namsx220, dongxe220, giaban220, bienso220, mauxe220)
        @trongtai220 = trongtai220
    end

    def ThongTin220()
        super()
        puts "Trọng tải: #{@trongtai220}"
    end
end

class QLPTGT220
    attr_accessor :phuongtien220
    def initialize
        @phuongtien220 = []
    end

    def Them220(pt220)
        @phuongtien220 << pt220
    end

    def Xoa220(id220)
        @phuongtien220.each do |pt|
            if pt.id220 == id220
                @phuongtien220.delete(pt)
                return true
            end
        end
        return false
    end
end