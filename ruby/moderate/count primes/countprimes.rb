require 'prime'

def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
require 'prime'

teste = entrada()
# processa a linha:
teste.each do |linha|
  m = linha.split(",")[0].to_i
  n = linha.split(",")[1].to_i
  found =  []
  from = []
  Prime.each(n) do  |x|
    if x >= m
      found << [x]
    end
  end

     puts found.length


end
