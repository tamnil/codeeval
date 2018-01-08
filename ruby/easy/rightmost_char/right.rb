
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
  teste = entrada()
# processa a linha:
teste.each do |line|
  arr = line.split(",") 
  string = arr[0].split("")
  index = -1
  string.each_with_index do |x,i|
    if x.to_s == arr[1].to_s then
      index = i.to_i
    end
  end
  puts index


end
