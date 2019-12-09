class HelloWorld
end
# 类方法定义在类的外部，可以直至通过类名来调用方法
class << HelloWorld
  def hello(name)
    puts "#{name} said hello"
  end
end

def HelloWorld.helloagain(name)
  puts "#{name} said no"
end

# 当然 也可以在类中追加类方法的定义

class HelloWorld
# 在class语句中使用self时 引用的对象为类本身
  class << self
    def hello(name)
      puts "#{name} said hello"
    end
  end

  def self.helloagain(name)
    puts "#{name} said no"
  end
end

# 直接调用类中的方法而无需新建实例
HelloWorld.hello("JOJO")
HelloWorld.helloagain("DIO")

