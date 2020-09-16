# the first try
#$nums = [-2,1,-3,4,-1,2,1,-5,4]
#n = nums.size
=begin
class MSA
  $nums = [-2,1,-3,4,-1,2,1,-5,4]
  def msa
    nums.each do |i|

    end
  end
end
=end

# the second try
=begin
nums = [-2,1,-3,4,-1,2,1,-5,4]

def msa(nums,n)
  if n>0
    if msa(nums,n)>=msa(nums,n-1)
      return m
    else
      i =
      j =
    end
  end
  return m
end
=end

# the third try
=begin
nums = [-2,1,-3,4,-1,2,1,-5,4]

def msa(num,i,j)
  int i,j,m
  j = i+m-1
  max = 0
  if m<=num.size
    (i..j).each do |x|
      max = max + num[i+x]
    end
    return max
  end
  if msa(num,i-1,j)>msa(num,i,j+1)
    i = i-1
  else
    j = j+1
  end
end

msa(nums,i,j)
=end

# example
=begin
nums = [-2,1,-3,4,-1,2,1,-5,4]
#注意取名不能为伪变量
def put(nums)
#  num = Array.new
  num = nums
  puts "#{num}"
end
puts nums
put(nums)
=end


# the forth try
=begin
nums = [-2,1,-3,4,-1,2,1,-5,4]
n = num.size

def msa(num,n)
  max = 0
  m = n
  for i in 0..(n-m)
    (i..i+m-1).each do
      max = max + num[i]
      i += 1
    end
  end
#  return max
  if msa(num,n)>=msa(num,n-1)
    max =
  end
end

msa(nums,n)
=end

# 暴力 超时
#nums = [-2,1,-3,4,-1,2,1,-5,4]
nums = [-1]
=begin
#max = 0
sum = 0
(0..(nums.size-1)).each do |i|
  for j in i..(nums.size-1)
    i..j.each do |n|
      sum = sum + nums[n]
    end
    puts sum
  end
end
=end
sum = 0
maxx = nums.min
x,y = 0
=begin
nums.each do |m|
  if nums[m]<maxx
    maxx = nums
  end
end
=end
(0..(nums.size-1)).each do |i|
#  puts i
  for j in i..(nums.size-1)
    for n in i..j
      sum = sum + nums[n]
    end
    if maxx < sum
      maxx = sum
      x = i
      y = j
    end
    sum = 0
#    puts sum
  end

end
puts maxx,x,y

# the fifth try
nums = [-2,1,-3,4,-1,2,1,-5,4]