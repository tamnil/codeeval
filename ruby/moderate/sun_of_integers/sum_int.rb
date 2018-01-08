
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  ret = line.split(" ").map{ |x| 
    x[0] = x[0].upcase 
    x
  }
  puts ret.join(" ")
end
