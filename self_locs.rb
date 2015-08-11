# self_locs.rb

puts self         # -> main (an instance of Object whose to_s returns "main")

class Test
  puts self       # -> Test

  def meth1
    puts self     # No output at this point.
  end

  class SubTest
    puts self     # -> Test::SubTest

    def meth2
      puts self   # No output at this point.
    end
  end # class SubTest
end # class Test

module TestMod
  puts self   # -> TestMod
end

t = Test.new
puts t        # -> #<Test:0x007f905b081d10>
t.meth1       # -> #<Test:0x007f905b081d10>

ts = Test::SubTest.new
puts ts       # -> #<Test::SubTest:0x007f905b081bf8>
ts.meth2      # -> #<Test::SubTest:0x007f905b081bf8>
