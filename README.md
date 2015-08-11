# Notes on self

I took some of this info from
From The Well-Grounded Rubyist, Chapter 5.

# Contexts

See `self.rb`

At any point in the program, one object is self.

Contexts      | self
------------- | ----------------
top level     | main
class         | class object
module        | module object
method        | see next table

Method location             | self
--------------------------- | ----------------------------------------------
Top level                   | whatever object is self when method is called
Instance method in a class  | an instance of the class when method is called
Instance method in a module | 1. obj extended by module
                            | 2. instance of a class which mixes in module
Singleton method            | object on which method is defined

Note:  Methods defined at the top level are available to all objects as
private methods.  This means they can be used anywhere but can never have
a receiver.

# The puts method

See `File_puts.rb`

What about File#puts (actually IO.puts)?  It's defined in IO.

# Top level

see `top_level.rb`

Top level self is interesting.

Top level methods: private methods of Kernel.  Since Object
includes Kernel, top level methods can be called in all contexts.
Private methods can not have a receiver.

main has 2 singleton methods.  In irb, main has a lot of them.

Check it out in irb:

    puts self.singleton_methods.sort

# Boundaries

See `boundaries.rb`

Crossing a class or module boundary changes self.

# Using a class method within a class

See `class_meth_within_class.rb`

For instance methods, self is not determined when the method is defined.
It is only determined when the method is executed.

Class methods can be called inside a class definition.

# Instance variables

See `inst_vars.rb`

Instance variables always belong to self.

Instance vars and class instance vars can have the same name.

# When self must be explicit

See `need_self.rb`

Sometimes you need to specify self explicitly.

# Summary of self in different locations

See `self_locs.rb`

Summary of self in different locations.

# Class methods are inherited
see `has_many.rb`

Just for fun.

Class methods are inherited.  When that happens, self changes.

Not illustrated:
    Class vars are inherited.
    Class instance vars are not.

