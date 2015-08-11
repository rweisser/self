# has_many.rb

module ActiveRecord
  class Base
    def self.has_many(items)
      # Sets up the association.
      puts "Users have many #{items}."
      puts "self is #{self}"
    end
  end
end

class User < ActiveRecord::Base
  has_many :bills

  def pay_bills
    puts "I hate paying my bills."
  end
end

u = User.new

puts 'Instantiating a User.'
u.pay_bills

__END__

Output:

Users have many bills.
self is User
Instantiating a User.
I hate paying my bills.

