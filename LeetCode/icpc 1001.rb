s = gets.strip
a = s.to_i
a.times do
  n = gets.strip
  num = n.length
  newn = n.gsub(/2050/,'aaaa')
  xxx = newn.rindex("a")
  if num%4 == 0
    if xxx == num-1
      puts "yes"
    else
      puts "no"
    end
  else
    puts "no"
  end
end
=begin
  if num%4 == 0
    x = num/4
    y = n.match("2050")
    a = y.begin(0)
    b = y.end(0)
    if n = ~/2050/ || a == 0 || b == x*4-4
      puts a
      puts b
      puts "yes"
    else
      puts "no"
    end
  else
    puts "no"
  end
=end

