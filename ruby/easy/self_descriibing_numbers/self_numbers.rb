
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  isDesc = 1
  arr = line.split("")
  arr.each_with_index do |c,i|
    if arr.count(i.to_s).to_s != c.to_s then
      isDesc = 0
    end
  end
  puts isDesc
end
