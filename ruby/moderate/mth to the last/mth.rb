def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  data = linha.split(" ")

  n = data.pop().to_i

  if n <= data.length
    el =  data[data.length - n]
    puts el
  end


end
