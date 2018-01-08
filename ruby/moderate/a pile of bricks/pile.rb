def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def get_deltas(arr1,arr2)
  ret_arr = []
  (0..arr1.length-1).each do |x|
    ret_arr << (arr1[x].to_i - arr2[x].to_i).abs

  end
  ret_arr.sort

end

def pass(hole,bricks)
  passed = []
  bricks.each do |brick|
    if hole[0] >= brick[1][0]

      if hole[1] >= brick[1][1]
        passed << brick[0]
      end
    end
  end
  if passed == []
    return "-"
  else
    passed.uniq.join(",")
  end

end


teste = entrada()
# processa a linha:
teste.each do |linha|
  t = linha.gsub(/[\(\)\[\]]/,"").split("|")

  hole = t[0].split(" ").map { |x| x.split(",").map(&:to_i)}.flatten
  bricks = t[1].split(";").map{ |x| x.split(" ")}

  hole_delta = [(hole[0] - hole[2]).abs]
  hole_delta << (hole[1] - hole[3]).abs
  hole_delta.sort!
  bricks.map!  do |x| 
    x[1] = get_deltas(x[1].split(","),x[2].split(","))
    x.delete_at(2)
    x

  end
  # p  bricks
  # p bricks 
  # p hole_delta
  puts   pass(hole_delta,bricks)
  # p hole_delta
  # p bricks
end
