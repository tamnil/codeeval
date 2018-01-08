
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|

  n = line.split(",")
  continue = true
  min = n[0]
  base = n[1]
  count = 1
  while continue == true do
    multiple = count.to_i * base.to_i
    if multiple >= min.to_i then

      continue = false
    end
    count += 1
  end
  puts multiple

end
