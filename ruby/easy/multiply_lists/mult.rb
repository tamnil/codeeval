
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  arr = line.split("|")
  result = []
  list1 = arr[0].split(" ")
  list2 = arr[1].split(" ")
  list1.each_with_index do |x,i|
    result[i] = x.to_i * list2[i].to_i
  end
  puts result.join(" ")
end
