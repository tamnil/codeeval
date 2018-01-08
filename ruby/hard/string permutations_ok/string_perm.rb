def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
teste = entrada()

# processa a linha:
teste.each do |line|
arr = line.split("")

perm = arr.permutation.to_a.map { |x| x.join("")}

puts perm.sort.join(",")

end
