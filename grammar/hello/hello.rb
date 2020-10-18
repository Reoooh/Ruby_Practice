# print "Hello, Ruby. \n"
# puts " the first : #{ARGV[0]}"
# filename = ARGV[0]
# file = File.open(filename)
# text = file.read
# print text
# file.close

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  print line if pattern =~ line
end
file.close
