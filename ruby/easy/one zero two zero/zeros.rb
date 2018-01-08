
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  zeros, n = line.split(" ").map(&:to_i)
  temp_arr = []
  (1..n).each do |x|
    temp_arr << x.to_s(2)
  end
  count =0
  temp_arr.each do |x|
    if  x.split("").count("0") == zeros
      count +=1
    end

  end
  puts count
end  
