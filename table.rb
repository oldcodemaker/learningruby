# heading
table1 = 'Times Table to 9'
# no heading
table2 = ''

print 'Enter 9 or 20: '

x = gets.chomp
x = x.to_i
case x
when 9
  puts "#{table1}".center(34)
when 20
  puts " #{table2}"
else
  puts 'You have to pay extra for enhancements to this program'
end
space = (x.to_s.size) + 1
r = (1..x)
r.each { |i| print '%3d ' % i }
print "\n"
# not necessary to show multiplication table times 1 - so, start with 2
r = (2..x)
r.each do |j|
  print '%3d ' % j
  r.each { |i| print '%3d ' % (i * j) }
  print "\n"
end
