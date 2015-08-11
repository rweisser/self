# class_meth_with_class.rb

class C
  def C.meth
    puts 'This method can be called within C, because C is self.'
    puts 'It can also be called on C from outside of C.'
  end

  meth
end

puts '=' * 70

C.meth

__END__

Output:

This method can be called within C, because C is self.
It can also be called on C from outside of C.
======================================================================
This method can be called within C, because C is self.
It can also be called on C from outside of C.

