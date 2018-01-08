
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
teste = entrada()
# processa a linha:
teste.each do |line|
  words = line.split(" ")
len = words.length - 2
puts words[len]

end
