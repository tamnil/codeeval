
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  test_arr = []
  line.split(";").each do |x|
    test_arr << x.split(",")[1].to_i

  end
  test_arr = test_arr.sort
deltas = []
(0..test_arr.length-2).each do |x|
deltas << test_arr[x + 1].to_i - test_arr[x].to_i


end

deltas.unshift(test_arr[0])

 puts "#{deltas.join(",")}"


end  
