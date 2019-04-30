source = "abc"
target = "abbcc"
s = source.to_s
t= target.to_s
x = source.length
y = target.length
n = 0
y.times do |i|
  case t[i]
  when s[0]
    if t[i+1] == s[0]
      n = n+1
    elsif t[i+1] == s[1]
      n = n
    elsif t[i+1] == s[2]
      n = n
    else
      n = -1
      return -1
      break
    end
  when s[1]
    if t[i+1] == s[0]
      n = n+1
    elsif t[i+1] == s[1]
      n = n+1
    elsif t[i+1] == s[2]
      n = n
    else
      n = -1
      return -1
      break
    end
  when s[2]
    n = n + 1
  else
    n = -1
    break
  end
end
puts n
return n