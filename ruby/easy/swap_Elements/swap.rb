
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  arr = line.split(":")[0].split(" ")
  swapBank = line.split(":")[1].split(",")

  swapBank.each do |x|

    coord = x.split("-")
    arr[coord[0].to_i] , arr[coord[1].to_i] = arr[coord[1].to_i] , arr[coord[0].to_i]

  end
  puts arr.join(" ")
end
