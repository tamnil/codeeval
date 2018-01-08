def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
require 'prime'

teste = entrada()
# processa a linha:
teste.each do |linha|
  n = linha.split(";")[0].to_i
  arr = linha.split(";")[1].split(",")
  found = ""
  for i in (0..n - 1)
    first = arr[i]
    for j in (i .. n - 1) 
      if arr[i] == arr[j] && i != j
        found = arr[i]
      end

    end
  end

puts found


end
