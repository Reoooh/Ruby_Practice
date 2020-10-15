# 类方法的操作对象不是实例 而是类本身
# 类方法可定义在类的外部 可以直至通过类名来调用方法

class HelloWorld
end

class << HelloWorld
  def hello(name)
    puts "#{name} said hello"
  end
end

def HelloWorld.helloagain(name)
  puts "#{name} said hello again"
end

# 当然 也可以在类中追加类方法的定义
# 在class语句中使用self时 引用的对象为类本身

class HelloWorld
  class << self
    def hi(name)
      puts "#{name} said hello"
    end
  end

  def self.hiagain(name)
    puts "#{name} said hi again"
  end
end

# 直接调用类中的方法而无需新建实例
HelloWorld.hello('JOJO')
HelloWorld.helloagain('DIO & JOJO')
HelloWorld.hiagain('DIO')
HelloWorld.hiagain('JOJO & DIO')
