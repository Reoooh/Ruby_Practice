# 在方法内创建当前类对象时 不直接使用类名
# 使用 self.class 创建的类为实际调用 new 方法时的类 确保处理继承与Mix-in时不会出现不必要的错误

class Point
    attr_accessor :x, :y

    def initialize(x = 0, y = 0)
        @x, @y = x, y
    end

    def inspect
        "(#{x}, #{y})"
    end

    def +(other)
        self.class.new(x + other.x, y + other.y)
    end

    def -(other)
        self.class.new(x - other.x, y - other.y)
    end
end

point_a = Point.new(3, 6)
point_b = Point.new(1, 8)

p point_a
p point_b

p point_a + point_b
p point_a - point_b