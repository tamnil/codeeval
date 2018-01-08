def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
arr = linha.split(";")[0].split(",")
  n = linha.split(";")[1].to_i
a = []

begin
  cache = arr.slice!(0,n)
  if cache.length == n
    cache = cache.reverse
  end
  a << cache
end while arr.length > 0
puts a.flatten.join(",")
# reverse_group = arr.first(n).reverse
# last_group = arr.last(arr.length - n)
# puts (reverse_group + last_group).join(",")

end
