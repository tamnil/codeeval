
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def montaMatriz(m , n , dados)
  ret =  Array.new(m){Array.new(n)}

    # monta a matriz  dado o tamanho m,n
  (0..m-1).each do |i|
    (0..n-1).each do |j| 
    # ret[i][j] = "asd"
    ret[i][j] = [dados.shift().to_i]

    end
  end

  return ret

end


teste = entrada()
# processa a linha:
teste.each do |line|
  temp = line.split(";")
  m = temp[0].to_i
  n = temp[1].to_i
  # puts m
  dados = temp[2].split(" ")
  matriz = montaMatriz(m,n,dados)
  # puts matriz[2]
  puts matriz
  puts "next"

end
