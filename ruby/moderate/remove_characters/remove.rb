def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  stringArr = linha.split(",")[0].split("")
  chars = linha.split(",")[1].gsub(" ","").split("")

  chars.each do |x|
    stringArr.delete(x)
  end


  puts stringArr.join
end
