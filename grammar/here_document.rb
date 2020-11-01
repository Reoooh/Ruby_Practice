# Here Document
# 使用 << 创建字符串，也可使用Here Document赋值变量
# 结束标识符必须位于行首

10.times do |i|
    print(<<"EOB")
Hello World!: #{i}
EOB
end

# 使用 <<- 代替 << 以忽略结束标识符前的空格与制表符

10.times do |i|
    print(<<-"EOB")
Hello World again!: #{i}
    EOB
end

# 使用 <<~ 消除行首空白

10.times do |i|
    print(<<~"EOB")
        Hello World again and again!: #{i}
    EOB
end