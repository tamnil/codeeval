def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
# calculate next line

def pascal_line(n)
  line = [1]

  (0..n-1).each do |x|

    line << line[x]*(n-x)/(x+1)
  end

  line
end


teste = entrada()
# processa a linha:
teste.each do |linha|
  n = linha.to_i - 1
  pascal = []
  (0..n).each do |x|

    pascal << pascal_line(x)

  end

  puts pascal.flatten.join(" ")

end
