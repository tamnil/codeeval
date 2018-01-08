def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  puts ( line.to_i % 2 == 0 ? "1" : "0")

end
