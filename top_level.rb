# top_level.rb

# Top level methods

# A top level method is a private instance method of Kernel.

def sep
  puts
  puts '=' * 70
  puts
end
  

kernel_methods = Kernel.private_methods
puts 'private methods of Kernel before defining the add method:'
puts
puts kernel_methods.sort[0..5]
puts '<snip>'

sep

def add(x, y)
  x + y
end

kernel_methods = Kernel.private_methods
puts 'private methods of Kernel after defining the add method:'
puts
puts kernel_methods.sort[0..5]
puts '<snip>'

sep

# Note that puts is also a top level method.

class C
  puts "In the body of class C, 3 + 4 = #{add 3, 4}"

  def junk
    puts "In C#junk, 3 + 4 = #{add 3, 4}"
  end
end

sep

c = C.new
c.junk

sep

# You can't use add with a receiver.

begin
  puts 'Using add with a receiver:'
  puts "3 + 4 = #{c.add 3, 4}"
rescue Exception => e
  puts "Got an error: #{e}"
end

sep

puts "main is an Object with some singleton methods,"
puts "both of which return 'main'."
puts
puts self.singleton_methods.sort

sep

puts "main is not the name of anything."
puts "It's just the result of self.to_s at the top level"
puts
puts "self.class = #{self.class}"
puts "self.to_s = #{self.to_s}"
puts "self.inspect = #{self.inspect}"

__END__

Output:

private methods of Kernel before defining the add method:

alias_method
append_features
attr
attr_accessor
attr_reader
attr_writer
<snip>

======================================================================

private methods of Kernel after defining the add method:

add
alias_method
append_features
attr
attr_accessor
attr_reader
<snip>

======================================================================

In the body of class C, 3 + 4 = 7

======================================================================

In C#junk, 3 + 4 = 7

======================================================================

Using add with a receiver:
Got an error: private method `add' called for #<C:0x007fc902095740>

======================================================================

main is an Object with some singleton methods,
both of which return 'main'.

inspect
to_s

======================================================================

main is not the name of anything.
It's just the result of self.to_s at the top level

self.class = Object
self.to_s = main
self.inspect = main
