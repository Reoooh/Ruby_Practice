=begin
@@I = 1
@@V = 5
@@X = 10
@@L = 50
@@C = 100
@@D = 500
@@M = 1000
=end

#rom = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
#rom = {"M":1000, "CM":900, "D":500, "CD":400, "C":100, "XC":90, "L":50, "XL":40, "X":10, "IX":9, "V":5, "IV":4, "I":1}
num = 0
rom = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}
#rom = {M:1000, D:500, C:100, L:50, X:10, V:5, I:1}

=begin
s = "MMMCMXCIX"
puts s.length
puts rom.length
puts rom
p rom.keys
p rom.values
puts rom["M"]
=end

a = "VI"
#n = a.length
=begin
for i in 0..(n-1)
#  n = a[i]
#  puts n
  if (i<(n-1) && rom[i]<rom[i+1])
    num -= rom[i]
  else
    num += rom[i]
  end
#  puts rom[n]
#  num += rom[n]
end
puts num
=end

(0..a.length-2).each do |i|
  n = a[i]
  m = a[i+1]
  puts n
  p rom[n]
#  puts m
#  p rom[m]
  if rom[n]<rom[m]
    num = num - rom[n]
  else
    num = num + rom[n]
  end
end
x = a[a.length-1]
puts x
puts rom[x]
puts num+rom[x]

=begin
n = "asdfgh"
puts n.size
x = 0
(n.size/2-1).times do
  puts x
  puts n[x]
  x+=2
end
=end