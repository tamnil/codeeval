def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  text = linha.split("")
  ret = "" 

  text.each do |x|
    if text.count(x) == 1 
      ret = x
      break
    end

  end

puts ret
end
