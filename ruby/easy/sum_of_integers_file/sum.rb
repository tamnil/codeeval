
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

puts entrada().map!(&:to_i).reduce(:+)
