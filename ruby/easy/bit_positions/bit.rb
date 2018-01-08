
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  arr = line.split(",")
  bits = arr[0].to_i.to_s(2).reverse
  # match index 0
 puts ( bits[arr[1].to_i - 1] == bits[arr[2].to_i - 1] ? "true" : "false")
  
end
