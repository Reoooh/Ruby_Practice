#l1 = [1,2,4]
#l2 = [1,3,4]
=begin
#arr = Array.new
arr = l1 + l2
arr = arr.sort{|a,b| a<=>b}
p arr
=end

=begin
class Ex
end
ex = Ex.new
p ex
puts ex
=end

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(4)
d = ListNode.new(1)
e = ListNode.new(3)
f = ListNode.new(4)
a.next = b
b.next = c
d.next = e
e.next = f
p a
p b
p c
p d
puts a.val, b.val, c.val

=begin
list = ListNode.new(0)
#list = a
#n = 0
if a.val<=d.val
#  list.val = a.val
  list.next = a
#  a = a.next
#  list = list.next
else
#  list.val = d.val
  list.next = d
#  d = d.next
#  list = list.next
end
=end
=begin
loop do
  if a != nil
    if a.val<=d.val

    end
  else
    break
  end
end
=end
#p list
#p list.next
#p a
#p (list.next).next

#se = ListNode.new(0)
se = a
n = 0
m = 0
loop do
  if se!=nil
    n += 1
    se = se.next
  else
    break
  end
end
se = d
loop do
  if se!=nil
    m += 1
    se = se.next
  else
    break
  end
end
puts n
puts m

l1 = a
l2 = d

#newlist = nil
fir = nil
las = nil
loop do
  if l1.val > l2.val
    newlist = l2
    l2 = l2.next
  else
    newlist = l1
    l1 = l1.next
  end

  if las == nil
    fir = newlist
    las = newlist
  else
    las.next = newlist
    p las
    las = newlist
    p las
  end

  if l1 == nil
    las.next = l2
    break
  elsif  l2 == nil
    las.next = l1
    break
  end
end
p fir