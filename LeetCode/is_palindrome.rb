x = 121
n = Array.new
if x<0
  return false
else
  while x>=10 do
    n << x%10
    x /= 10
  end
  n << x
end

if n.size>2
  (n.size/2).times do |i|
    return false if n[i] != n[n.size - 1 - i]
  end
  puts "t"
  return true
else
  if n[0]==n[1]
    puts "t"
    return true
  else
    puts "f"
    return false
  end
end
=begin
puts n
puts n.size

t = 0
if n.size>2
  (n.size)/2.times do |i|
    if n[i]==n[n.size-1-i]
      t += 1
    else
      return false
    end
  end
  puts t
  if t==n.size/2
    puts "t"
    return true
  else
    puts "f"
    return false
  end
else
  if n[0]==n[1]
    return true
  else
    puts "f"
    return false
  end
end
=end