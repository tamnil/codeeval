def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  arr = []
  original = line.split(" ")

  original.each_with_index do |x,i|
    if i % 2 != 0
      arr << original.slice(i)
    end

  end
  puts arr.reverse.join(" ")

end

