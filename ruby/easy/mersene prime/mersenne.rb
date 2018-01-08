require 'prime'
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  arr = []
  if line.to_i != "" && line.to_i > 3  

    (3..line.to_i).each() do |x|

      te = Math.log2(x + 1) 
      if  te / te.to_int == 1  # verify if integer
        if Prime.prime?(te.to_i)
          arr << [x]
        end

      end


    end
    puts arr.join(", ")
  end
end

