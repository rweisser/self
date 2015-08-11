# self.rb

# Examples of self
# Modified from The Well-Grounded Rubyist

puts 'At top Level:'
puts "self is #{self}"
puts

class C
  puts "In class definition block:"
  puts "self is #{self}"
  puts

  def self.x
    puts "In class method C.x:"
    puts "self is #{self}"
    puts
  end

  def m
    puts "In instance method C#m:"
    puts "self is #{self}"
    puts
  end
end

puts "Calling C.x:"
C.x

puts "Creating object c1:"
c1 = C.new
puts "c1 is #{c1}"
c1.m

puts "Creating object c2:"
c2 = C.new
puts "c2 is #{c2}"
c2.m

puts "Adding a singleton method to c2:"
def c2.sing_meth
  puts "In singleton method of c2"
  puts "self is #{self}"
end
c2.sing_meth

__END__

Output:

At top Level:
self is main

In class definition block:
self is C

Calling C.x:
In class method C.x:
self is C

Creating object c1:
c1 is #<C:0x007ff9b293c6b0>
In instance method C#m:
self is #<C:0x007ff9b293c6b0>

Creating object c2:
c2 is #<C:0x007ff9b293c4a8>
In instance method C#m:
self is #<C:0x007ff9b293c4a8>

Adding a singleton method to c2:
In singleton method of c2
self is #<C:0x007ff9b293c4a8>

