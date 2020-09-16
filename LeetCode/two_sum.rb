nums = [2,7,11,15]
target = 9
(nums.size-1).times do |i|
  puts "i:#{i}"
  (nums.size-i-1).times do |j|
    j = j+i+1
    puts "j:#{j}"
    if nums[i]+nums[j]==target
      puts "[#{i},#{j}]"
    end
  end
end
=begin
def two_sum(nums, target)
  x = number.size
  x.times do |i|{
      x-1-i.times do |j|{
          s = nums[i]+nums[j+1]
          if s == target
            print "[#{i},#{j}]"
          end
      }
      end
  }
  end
end
=end