
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  import = line.split(" ")
  n = import.shift.to_i
  import.map!(&:to_i)
  mean = (import.inject(0,:+)/n).round
  sum = 0
  (0..n-1).each do |x|
    sum += (import[x] - mean).abs
  end
  puts sum



end
