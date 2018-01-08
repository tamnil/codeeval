def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
text = linha.to_i.to_s(2)
ones = text.split("").count("1")

 puts ones

end
