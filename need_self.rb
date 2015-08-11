# need_self.rb

class Junk
  def stuff
    @stuff
  end

  def stuff=(stuff)
    @stuff = "The stuff is #{stuff}"
  end

  def log_stuff=(new_stuff)
    puts "Changed stuff to #{new_stuff}"
    # Doesn't work:
    # stuff = new_stuff
    self.stuff = new_stuff
  end

  def log_stuff2=(new_stuff)
    puts "Changed stuff to #{new_stuff}"
    # Doesn't work:
    stuff = new_stuff
    stuff
  end
end

j = Junk.new

j.stuff = "first"
puts j.stuff             # -> The stuff is first

j.log_stuff = "second"   # -> Changed stuff to second
puts j.stuff             # -> The stuff is second

j.log_stuff2 = "third"   # -> Changed stuff to third
puts j.stuff             # -> The stuff is second
