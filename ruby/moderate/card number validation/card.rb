def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  number = linha.gsub(" ","").split("").reverse
  even = []
  odd = []
  sum = 0
  number.each_with_index do |x,i|


    if i % 2 == 0 
      even << x.to_i
    else
      odd << x.to_i
    end
  end
  odd.map! do |x| 
    doubled =  x*2

    if doubled > 9
      str = doubled.to_s.split("")

      ret = str[0].to_i + str[1].to_i
    else
      ret = doubled
    end
    ret
  end
  odd.each do |x|
    sum += x.to_i
  end
  even.each do |x|
    sum += x
  end
  if sum % 10 == 0
    puts "1"
  else
    puts "0"
  end


end
