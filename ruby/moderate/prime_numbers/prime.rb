def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
require 'prime'

teste = entrada()
# processa a linha:
teste.each do |linha|
  arr = []
  Prime.each(linha.to_i) do |p|
    arr << [p]

  end
  puts arr.join(",")
end

