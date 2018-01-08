def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  text1 = linha.split(",")[0]
  text2 = linha.split(",")[1].split("")
  flag = "False"
  len = text1.length

  (0..len).each do
    if text1 == text2.join
      flag = "True"
    end
    text2.rotate!
  end
  puts flag

end
