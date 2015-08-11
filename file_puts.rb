# file_puts.rb

require 'fileutils'

FileUtils.remove 'data_file', force: :true

# fh.puts is IO#puts.
# The puts used in the foreach is Kernel#puts, which
# is private.

File.open 'data_file', 'w' do |fh|
  fh.puts "Stuff"
  fh.puts "More stuff"
end

File.foreach('data_file') { |l| puts l }
