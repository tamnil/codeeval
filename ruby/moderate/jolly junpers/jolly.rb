  def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
require 'prime'

teste = entrada()
# processa a linha:
teste.each do |linha|
  t = linha.split(" ")
  n = t.shift().to_i - 1
  arr = []
  jolly = "Jolly"
  t.each_with_index do |x,i|
    if t[i+1] != nil
      #get diferences:
      arr << [(t[i].to_i - t[i+1].to_i).abs] 
    end
  end
#sort and process deltas
  sortedArr = arr.sort()
  sortedArr.each_with_index do |y,i|
    if sortedArr[i+1] != nil
      # print  y ,"- ", sortedArr[i+1]
      if y.join.to_i  != sortedArr[i+1].join.to_i - 1
        jolly = "Not jolly"
      end
    end
  end

# verify if delta = 0
  if sortedArr[0] != nil
    if sortedArr[0].join.to_i == 0
      jolly = "Not jolly"
    end
  end
  # print sortedArr
  puts jolly
end
