
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  puts line.split("").map(&:to_i).reduce(:+)
end
