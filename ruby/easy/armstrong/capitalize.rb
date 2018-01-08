
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
arr = line.split("")
res = 0

arr.each do |n|
res += n.to_i ** arr.length
end

puts ( res == line.to_i ? "True" : "False")


end
