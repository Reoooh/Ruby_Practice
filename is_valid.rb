=begin
s = " {[ ] } "
new_s = String.new
(s.length).times do |i|
#  puts s[i]
  new_s += s[i] if s[i]!=" "
end
puts new_s
puts new_s.length%2

if new_s.length%2 != 0
  puts "false"
  return false
end

(new_s.length/2).times do |i|
  puts new_s[i]
  puts new_s[new_s.length-1-i]

  case new_s[i]
  when "("
    return false if new_s[new_s.length - 1 - i] != ")"
  when "["
    return false if new_s[new_s.length - 1 - i] != "]"
  when "{"
    return false if new_s[new_s.length - 1 - i] != "}"
  else
    next
  end
end
puts "true"
return true
=end

s = " () { [()][]}"
new_s = Array.new
s.length.times do |i|
  new_s << s[i] if s[i]!=" "
end
p new_s
#p s.split
if new_s.length%2 != 0
  puts "false"
  return false
end

stack = Array.new
p new_s.length
stack.push(new_s[0])
(1..(new_s.length-1)).each do |i|
  case new_s[i]
  when "{","[","("
    stack.push(new_s[i])
  when "}"
    stack.pop if stack.last=="{"
  when "]"
    stack.pop if stack.last=="["
  when ")"
    stack.pop if stack.last=="("
  else
    next
  end
end
=begin
stacks.length.times do
  stacks.pop
end
=end
p stack
if stack==[]
  puts "true"
else
  puts "false"
end