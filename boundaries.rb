# boundaries.rb

# Self changes when you cross a class or module boundary.

class C
  puts "At beginning of class C, self is #{self}"

  module M
    puts "In nested module M, self is #{self}"
  end

  puts "At end of class C, self is #{self}"
end

__END__

Output:

At beginning of class C, self is C
In nested module M, self is C::M
At end of class C, self is C

