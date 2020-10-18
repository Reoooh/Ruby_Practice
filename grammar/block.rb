def test
    puts "in the test"
    yield
    # puts
    puts "in the test again"
    yield
end
test {puts "in the block"}
# 如何定义块方法：在方法中插入yield以对应在调用方法时附带的块程序 如上例{#}中即为块方法
puts # 空行

def block_args_test
    yield()
    yield(1)
    yield(1,2,3)
end

puts "block只接收一个参数"
block_args_test do |i|
    p [i]
end

puts "block接收三个参数"
block_args_test do |i,j,k|
    p [i,j,k]
end

puts "block接收个数不确定的参数"
block_args_test do |*i|
    p [i]
end
# 当yield参数个数与块变量个数不同时：块变量更多时空余块变量值为nil yield参数更多时多出的参数值无法被接收
# 参数个数不确定时可将所有变量整合为一个数组接收

# 对象.方法(参数) do |块变量|
#   块方法
# end

#根据方法不同 参数传递给块变量 并在块方法中执行 其结果最终返回给方法
puts # 空行

def total(from,to)
    result = 0
    from.upto(to) do |num|
        if block_given?
            result += yield(num)
        else
            result += num
        end
    end
    return result
end

p total(1,10)
p total(1,10){|nums| nums**2}

puts # 空行

# 块中使用break方法 程序返回调用块的地方 方法中返回计算结果的处理会被忽略
# break 0 指定break方法的参数 因此0为方法的返回值

# next方法会中断当前处理 继续执行后面的处理 若next未指定参数 使用next后 执行块方法的yield方法返回nil
# 因此程序报错 “nil can't be coerced into Integer”
# next 0 指定参数为0 则返回值为0

# 若在块中使用redo方法 程序会返回块的开头 以相同块变量再次执行处理 块的处理结果不会返回给外部 容易使程序陷入死循环

n = total(1,10) do |num|
        if num == 5
            break 0
        end
        num 
    end
p n

m = total(1,10) do |num|
        if num % 2 == 0
            next 0
        end
        num 
    end
p m

puts # 空行

# 将块作为对象处理 可以在接收块方法之外的地方执行块方法
# 使用Proc.new方法生成Proc对象 Proc对象在调用方法之前 块中的程序不会被执行
# 块方法作为对象被调用 call方法的参数最为块参数来执行块

hello = Proc.new do |name|
    puts "Hello, #{name}."
end

hello.call("World")

puts # 空行

# 方法末尾参数以“&参数名”的形式 方法调用时传进来的块方法封装为Proc对象
# &block参数亦称为Proc参数
# 若调用方法时没有传递块 Proc参数则为nil
# 执行块的语句为 block.call(num)
# Proc参数必须定义在方法的所有参数最后

def newtotal(from,to,&block)
    result = 0
    from.upto(to) do |num|
        if block
            result += block.call(num)
        else
            result += num
        end
    end
    return result
end

p newtotal(1,10)
p newtotal(1,10){|nums| nums**2}

puts # 空行

# 将块封装为Proc对象后 可以随意调用块 将其赋值给实例变量

# 错误示范
=begin
def neototal(from,to)
    result = 0
    from.upto(to) do |num|
        if block_given?
            result += block.call(num)
        else
            result += num
        end
    end
    return result
end

block = Proc.new do |nums|
    nums = nums**2
end

p block.call(1..10)
p neototal(1,10)
p newtotal(1,10){|nums| nums**2}
p block.neototal(1.10)
=end

# 将Proc对象作为块传给其他方法处理

def call_each(ary, &block)
    ary.each(&block) # Array#each方法中 数组变量被逐个传递到块变量中
end

call_each [1,2,3] do |item|
    p item
end

# 通过yield调用块变量 实现与调用Proc对象相同的结果
# 不同点在于yield传递参数给块变量 结果返回方法
# Proc对象作为参数传入方法  作为块由其它方法执行

def call_each_test
    yield [1,2,3]
end

call_each_test do |items|
    items.each { |item| p item }
end

puts # 空行

# 块的作用域：块中可以访问块外部定义的局部变量 块内部定义的变量无法被外部访问 因此需要注意块内部变量定义时与外部变量的同名情况
# 块变量与局部变量名称相同时 默认为两个不同的变量

x = y = z = 0
ary = [1, 2, 3]

ary.each do |x; y| # x为块变量
    y = x # y为块变量以外的块局部变量
    z = x # z为局部变量
    p [x, y, z] # 确认块内变量值
end

p [x, y, z]

# 块变量只能在块内部使用 不能覆盖外部的局部变量
# 在块内定义局部变量
# 在块变量后加；以定义块变量以外的块局部变量
# 由上例可知 块方法参数x为块变量 y为块局部变量

# y输出零是因为在块中输出的y是块局部变量
# 所以实际上局部变量y的值没有改变