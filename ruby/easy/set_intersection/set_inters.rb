
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  sets = line.split(";")
set1 = sets[0].split(",")
set2 = sets[1].split(",")
puts (set1 & set2).join(",")
end
