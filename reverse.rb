x = 123
if x<0 then
  x=-1*x
  z=1
end
#n = x.size
=begin
for i in 1..n
  if(x>=10)
    S[n-i]=x%10
    x=x/10
  else
    S[0]=x
  end
  puts S
end
=end

=begin
x.size.times do |i|
  if x>=10
    S[x.size-1]=x%10
    x=x/10
  else
    S[0]=x
  end
end
puts S[]
=end

n=0
y=x
while y>=1 do
  y=y/10
  n=n+1
end
puts n

S = Array.new(n)
n.times do |i|
  if x>=10
    S[i] = x%10
    x = x/10
  else
    S[n-1] = x
  end
end
puts "#{S}"

s=0
n.times do |j|
  s = s+S[j]*(10**(n-j-1))
end

if z==1 then
  s=-1*s
end
puts s