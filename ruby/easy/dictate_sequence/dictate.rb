def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|

  arr = line.split(" ")
  count = 0
  cache = Array
  arr.each_with_index do |x,i|
    cache[count] << x
    if x == arr[i+1]
      cache[count] << x
    else
      count +=1
      cache[count] << x
    end

  end
puts cache[0]
end
