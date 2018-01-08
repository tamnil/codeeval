def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|

  n = linha.to_i
  el = []

  el << n % 26

  res = n/26

  if res > 0
    el << res % 26
    res = res/26

    if res > 0
      el << res % 26
    end
  end

print el

end
