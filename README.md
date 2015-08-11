# Some notes on self in Ruby

The concept of self in Ruby can be confusing.  I put together some examples
to help clarify it.

I took some of this info from
From The Well-Grounded Rubyist, Chapter 5.

## Contexts

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
a receiver.  See next section for an apparant exception.

See `self.rb`

## Is the puts method really private?

What about File#puts (actually IO.puts)?  It's defined in IO.

See `File_puts.rb`

## Top level

Top level self is interesting.

Top level methods are private methods of Kernel.  Since Object
includes Kernel, top level methods can be called in all contexts.
Since they are private methods, they can not have a receiver.

main has 2 singleton methods, to_s, and inspect.

see `top_level.rb`

In irb, main has a lot of them.

Check it out in irb:

    puts self.singleton_methods.sort

## Boundaries

Crossing a class or module boundary changes self.

See `boundaries.rb`

## Using a class method within a class

For instance methods, self is not determined when the method is defined.
It is only determined when the method is executed.

Class methods can be called inside a class definition.

See `class_meth_within_class.rb`

## Instance variables

Instance variables always belong to self.

Instance vars and class instance vars can have the same name.

See `inst_vars.rb`

## When self must be explicit

Sometimes you need to specify self explicitly.

See `need_self.rb`

## Summary of self in different locations

See `self_locs.rb`

## Class methods are inherited

Class methods are inherited.  When that happens, self changes.

Here is a fun example:

see `has_many.rb`

Not illustrated:
    Class vars are inherited.
    Class instance vars are not.

