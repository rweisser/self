# inst_vars.rb

# Instance variables belong to self.

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.name
    @name
  end
  
  @name = 'fred'
end

p = Person.new 'joe'
puts "p's name is #{p.name}"
puts "Person's name is #{Person.name}"

__END__

Output:

p's name is joe
Person's name is fred
