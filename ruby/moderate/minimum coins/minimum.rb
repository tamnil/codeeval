def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def check(n)
  coins = 0
  res = n.to_i
  values = [5,3,1] # keep in decrescent order!
  values.each do |x|
    coins += (res.to_i / x.to_i).to_i
    res = res % x
  end
coins
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  puts check(linha)

end
