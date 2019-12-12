#strs = ["flower", "flow", "floawight"]
strs = ["ccc","ccc"]
#strn = String.new
#puts strs.length
strn = strs.sort{|a,b| a.length <=> b.length}
#puts strn[0]
#j = 0
=begin
(strn[0].length).times do
  strn.each do |i|
    if strn[0][j]==strn[i][j]
      str =  str + strn[0][j]
    else
      break
    end
  end
  j += 1
end
=end
#str = String.new
#$nn=0
(strn[0].length).times do |i|
  puts strn[0][i]
  (1..(strn.length-1)).each do |j|
    puts strn[j][i]
    if strn[j][i]!=strn[0][i]
#      return strn[0][0..(i - 1)] if i != 0
       if i!=0
         puts strn[0][0..(i-1)]
         return
       else
         puts "none"
         return ""
       end
    end
  end
#  $nn = i
#  puts $n
#  puts strn[0][0..i]
end
puts strn[0]
#puts strn[0][0..1]
=begin
if @@n == 0
  puts ""
else
  puts strn[0][0..(n-2)]
end
=end
#puts str
=begin
if str.length==0
  puts ""
else
  puts "#{str}"
end
=end
#puts strs[0][0]