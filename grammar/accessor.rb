# frozen_string_literal: true

# 在Ruby中无法直接从对象外部直接访问实例变量或对实例变量赋值 需要通过方法访问对象内部

class HelloJojo

    def initialize(myname = "Ruby")
        @name = myname
    end

    def name # 获取实例变量
        @name
    end

    def name=(newname) # 修改实例变量
        @name = newname
    end

    def hello
        puts "Hello, I am #{@name}"
    end
end

jojo = HelloJojo.new
jojo.name = "JOJO"
jojo.hello

# 当对象拥有多个实例变量时 逐个定义存取器过于繁杂 因此使用Ruby提供的存取器
# 在实例方法中可使用self变量引用方法的接收者
# 若省略接受者则self默认作为该方法的接受者

class HelloDio
    attr_accessor :name

    def initialize(myname = "Ruby")
        @name = myname
    end

    def hello
        puts "Hello, I am #{self.name}"
    end

    def hi
        puts "Hi, I am #{name}"
    end
end

dio = HelloDio.new
dio.name = "DIO"
dio.hi