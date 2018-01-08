def entrada(*args)
  File.read(ARGV[0]).split("\n")
end




teste = entrada()
# processa a linha:
teste.each do |linha|
  # puts check(linha)
  arr = linha.split(";")[0].split(",")
  n = linha.split(";")[1]
  res = []
  string = ""
  arr.each_with_index do |x,i|

    (i + 1..arr.length - 1).each do |y|
      if x.to_i + arr[y].to_i == n.to_i
        res << [x,arr[y]]
      end
    end

  end
  res.map! do |x|
    x.map(&:to_i).sort
  end
  if res != []
    res.each do |x|
      string +=  "#{x[0]},#{x[1]};"
    end
    string += "\n"
  else
    string = "NULL"
  end
  string.sub!(/;$/,"")
  print string
end
