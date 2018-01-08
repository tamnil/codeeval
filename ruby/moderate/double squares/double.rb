
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  n = line.to_i
  # if x > 1
  pair = []
  max  = Math.sqrt(n).floor()  # max interaction until k<0
  #    equation x ** 2 + y ** 2  = n  ->  x = sqrt(n - y ** 2)
  (0..max).each do |x|
    # puts x, Math.sqrt(n - x ** 2)
    y = Math.sqrt(n - x ** 2)
    if y - y.floor() == 0
      pair << [x,y.to_i].sort
    end
  end
  # puts "final count"
  puts pair.uniq.count
end
